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
from .models import Article, Category, Comment, Framework

def article_detail(request, slug):
    article = get_object_or_404(Article, slug=slug, status='published')
    if article.youtube_url:
        article.youtube_url = article.youtube_url.replace("watch?v=", "embed/")
    comments = article.comments.filter(approved=True)
    form = SearchForm()
    n_form = SubscriptionForm()
    
    if request.method == 'POST':
        name = request.POST.get('name')
        email = request.POST.get('email')
        comment_text = request.POST.get('comment')
        comment = Comment(article=article, name=name, email=email, comment=comment_text, approved=True)
        comment.save()
        return redirect('article_detail', slug=article.slug)
    
    context = {
        'article': article, 
        'comments': comments,
        'form': form,
        'n_form': n_form,
        
    }

    return render(request, 'posts/blog-article.html', context)

@require_POST
@login_required
def like_article(request, slug):
    article = get_object_or_404(Article, slug=slug)
    if article.likes.filter(id=request.user.id).exists():
        article.likes.remove(request.user)
    else:
        article.likes.add(request.user)
        article.dislikes.remove(request.user)
    return redirect('article_detail', slug=slug)

@require_POST
@login_required
def dislike_article(request, slug):
    article = get_object_or_404(Article, slug=slug)
    if article.dislikes.filter(id=request.user.id).exists():
        article.dislikes.remove(request.user)
    else:
        article.dislikes.add(request.user)
        article.likes.remove(request.user)
    return redirect('article_detail', slug=slug)

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
    articles = Article.objects.filter(status='published').order_by('-published_date')
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

def search_articles(request):
    s_form = SearchForm(request.GET or None)
    n_form = SubscriptionForm()
    query = request.GET.get('query', '')
    articles = Article.objects.none()

    if query:
        articles = Article.objects.filter(
            Q(title__icontains=query) |
            Q(content__icontains=query) |
            Q(frameworks__name__icontains=query) |
            Q(type__icontains=query) |
            Q(slug__icontains=query) |
            Q(category__name__icontains=query)
        ).distinct()

    # Pagination
    paginator = Paginator(articles, 10)  
    page_number = request.GET.get('page')
    articles = paginator.get_page(page_number)

    context = {
        's_form': s_form,
        'articles': articles,
        'query': query,
        'n_form': n_form,
    }
    return render(request, 'posts/search_results.html', context)
