from django.shortcuts import render, get_object_or_404, redirect
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.db.models import Q
from taggit.models import Tag # type: ignore
from newsletter.forms import SubscriptionForm
from .forms import SearchForm
from django.core.paginator import Paginator
from django.views.decorators.http import require_POST
from accounts.models import Profile
from .models import Article, ArticleView, Category, Comment, Framework, Reaction
from django.contrib.auth.decorators import user_passes_test
from django.urls import reverse_lazy
from django.utils.timezone import now

def permission_denied_view(request):
    return render(request, 'posts/permission_denied.html', {
        'message': "You do not have permission to access this page."
    })

def staff_or_superuser_required(user):
    return user.is_active and (user.is_staff or user.is_superuser)

def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip

def article_detail(request, slug):
    article = get_object_or_404(Article, slug=slug, status='published', type='article')
    similar_article = Article.objects.filter(category=article.category, status='published', type='article').order_by('?')[:4]
    for_u = Article.objects.filter(featured=True, status='published', type='article').order_by('?')[:8]

    if article.youtube_url:
        article.youtube_url = article.youtube_url.replace("watch?v=", "embed/")
    
    comments = article.comments.filter(approved=True)
    form = SearchForm()
    n_form = SubscriptionForm()

    # Increment view count if the IP address hasn't viewed this article before
    ip_address = get_client_ip(request)
    user_agent = request.META.get('HTTP_USER_AGENT', '')
    referrer = request.META.get('HTTP_REFERER', '')

    if not ArticleView.objects.filter(article=article, ip_address=ip_address).exists():
        article.views += 1
        article.save(update_fields=['views'])
        ArticleView.objects.create(article=article, ip_address=ip_address, user_agent=user_agent, referrer=referrer)

    if request.method == 'POST':
        if request.user.is_authenticated:
            name = request.user.first_name + ' ' + request.user.last_name
            email = request.user.email
        else:
            name = request.POST.get('name')
            email = request.POST.get('email')
        
        comment_text = request.POST.get('comment')
        comment = Comment(article=article, name=name, email=email, comment=comment_text, approved=True)
        comment.save()
        return redirect('article_detail', slug=article.slug)
    
    # Fetch the user's reactions to this article, if any
    user_reactions = []
    if request.user.is_authenticated:
        user_reactions = Reaction.objects.filter(user=request.user, article=article).values_list('reaction_type', flat=True)

    reactions = [
        ('like', 'bi-hand-thumbs-up', 'blue'),
        ('love', 'bi-heart', 'red'),
        ('laugh', 'bi-emoji-laughing', 'yellow'),
        ('surprise', 'bi-emoji-surprise', 'yellow'),
        ('sad', 'bi-emoji-frown', 'blue'),
        ('dislike', 'bi-hand-thumbs-down', 'red'),
    ]
    
    context = {
        'article': article,
        'comments': comments,
        'form': form,
        'n_form': n_form,
        'similar_article': similar_article,
        'for_u': for_u,
        'reactions': reactions,
        'user_reactions': user_reactions,  # Pass user reactions to the template
    }

    return render(request, 'posts/blog-article.html', context)

@user_passes_test(staff_or_superuser_required, login_url=reverse_lazy('permission_denied'))
def draft_detail(request, slug):
    draft = get_object_or_404(Article, slug=slug, status='draft')
    similar_article = Article.objects.filter(category=draft.category, status='published', type='article')[:8]

    if draft.youtube_url:
        draft.youtube_url = draft.youtube_url.replace("watch?v=", "embed/")

    # Initialize the forms
    form = SearchForm()
    n_form = SubscriptionForm()

    # Define the context
    context = {
        'article': draft, 
        'form': form,
        'n_form': n_form,
        'similar_article': similar_article,
    }

    return render(request, 'posts/draft-detail.html', context)


@login_required
def react_to_article(request, slug):
    article = get_object_or_404(Article, slug=slug)
    reaction_type = request.POST.get('reaction_type')

    reaction, created = Reaction.objects.get_or_create(
        user=request.user,
        article=article,
        defaults={'reaction_type': reaction_type}
    )

    if not created:
        # If the reaction already exists, update it
        reaction.reaction_type = reaction_type
        reaction.save()

    # Get the referring page
    referer = request.META.get('HTTP_REFERER')
    if referer:
        return redirect(referer)
    else:
        return redirect('article_detail', slug=article.slug)
    

@login_required
def toggle_bookmark(request, slug):
    article = get_object_or_404(Article, slug=slug)
    profile = get_object_or_404(Profile, user=request.user)
    
    if article in profile.bookmarks.all():
        profile.bookmarks.remove(article)
        messages.success(request, 'Removed from bookmarks.')
    else:
        profile.bookmarks.add(article)
        messages.success(request, 'Added to bookmarks.')

    # Get the referring page
    referer = request.META.get('HTTP_REFERER')
    if referer:
        return redirect(referer)
    else:
        return redirect('index')

def uploads(request):
    articles = Article.objects.filter(status='published', type='article').order_by('-published_date')
    categories = Category.objects.all()
    frameworks = Framework.objects.all()
    tags = Tag.objects.all()
    form = SearchForm()
    n_form = SubscriptionForm()
    s_form = SearchForm(request.GET or None)
    query = request.GET.get('query', '')

    if query:
        articles = Article.objects.filter(
        Q(title__icontains=query) | 
        Q(content__icontains=query) | 
        Q(frameworks__name__icontains=query) | 
        Q(type__icontains=query) | 
        Q(slug__icontains=query) | 
        Q(category__name__icontains=query),
        status='published',
    ).distinct()

    category_slug = request.GET.get('category')
    framework_slug = request.GET.get('framework')
    tag_slug = request.GET.get('tag')

    if category_slug:
        articles = articles.filter(category__slug=category_slug)
    if framework_slug:
        articles = articles.filter(frameworks__slug=framework_slug)
    if tag_slug:
        articles = articles.filter(tags__slug=tag_slug)

    # Paginate articles
    paginator = Paginator(articles, 10)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    article_count = page_obj.paginator.count  

    context = {
        'articles': page_obj,  
        'categories': categories,
        'frameworks': frameworks,
        'tags': tags,
        'article_count': article_count,
        'form': form,
        'n_form': n_form,
        's_form': s_form,
    }
    return render(request, 'posts/uploads.html', context)

def projects(request):
    diys = Article.objects.filter(status='published', type='diy').order_by('-published_date')
    categories = Category.objects.all()
    frameworks = Framework.objects.all()
    tags = Tag.objects.all()
    form = SearchForm()
    n_form = SubscriptionForm()
    s_form = SearchForm()

    category_slug = request.GET.get('category')
    framework_slug = request.GET.get('framework')
    tag_slug = request.GET.get('tag')

    if category_slug:
        diys = diys.filter(category__slug=category_slug)
    if framework_slug:
        diys = diys.filter(frameworks__slug=framework_slug)
    if tag_slug:
        diys = diys.filter(tags__slug=tag_slug)

    # Paginate diys
    paginator = Paginator(diys, 20)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    diy_count = page_obj.paginator.count  

    context = {
        'diys': page_obj,  
        'categories': categories,
        'frameworks': frameworks,
        'tags': tags,
        'diy_count': diy_count,
        'form': form,
        'n_form': n_form,
        's_form': s_form,
    }
    return render(request, 'posts/projects.html', context)

def diy_detail(request, slug):
    article = get_object_or_404(Article, slug=slug, status='published', type='diy')
    similar_article = Article.objects.filter(category=article.category, status='published', type='diy').order_by('?')[:4]
    for_u = Article.objects.filter(featured=True, status='published', type='diy').order_by('?')[:8]
    if article.youtube_url:
        article.youtube_url = article.youtube_url.replace("watch?v=", "embed/")
    comments = article.comments.filter(approved=True)
    form = SearchForm()
    n_form = SubscriptionForm()

    # Increment view count if the IP address hasn't viewed this article before
    ip_address = get_client_ip(request)
    user_agent = request.META.get('HTTP_USER_AGENT', '')
    referrer = request.META.get('HTTP_REFERER', '')

    if not ArticleView.objects.filter(article=article, ip_address=ip_address).exists():
        article.views += 1
        article.save(update_fields=['views'])
        ArticleView.objects.create(article=article, ip_address=ip_address, user_agent=user_agent, referrer=referrer)

    if request.method == 'POST':
        if request.user.is_authenticated:
            name = request.user.first_name + ' ' + request.user.last_name
            email = request.user.email
        else:
            name = request.POST.get('name')
            email = request.POST.get('email')
        
        comment_text = request.POST.get('comment')
        comment = Comment(article=article, name=name, email=email, comment=comment_text, approved=True)
        comment.save()
        return redirect('diy_detail', slug=article.slug)

    context = {
        'n_form': n_form,
        'article': article, 
        'comments': comments,
        'form': form,
        'n_form': n_form,
        'similar_article': similar_article,
        'for_u': for_u,
    }
    return render(request, 'posts/blog-diy.html', context)


def author_profile(request, username):
    profile = get_object_or_404(Profile, user__username=username)
    context = {
        'profile': profile,
    }
    return render(request, 'posts/author_profile.html', context)

