from django.shortcuts import render, get_object_or_404, redirect
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.views.decorators.http import require_POST
from .models import Article, Category, Comment, Framework

def article_detail(request, slug):
    article = get_object_or_404(Article, slug=slug, status='published')
    comments = article.comments.filter(approved=True)
    
    if request.method == 'POST':
        name = request.POST.get('name')
        email = request.POST.get('email')
        comment_text = request.POST.get('comment')
        comment = Comment(article=article, name=name, email=email, comment=comment_text, approved=True)
        comment.save()
        return redirect('article_detail', slug=article.slug)

    return render(request, 'posts/blog-article.html', {'article': article, 'comments': comments})

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
 
def uploads(request):
    articles = Article.objects.filter(status='published').order_by('-published_date')
    categories = Category.objects.all()
    frameworks = Framework.objects.all()

    category_slug = request.GET.get('category')
    framework_slug = request.GET.get('framework')

    if category_slug:
        articles = articles.filter(category__slug=category_slug)
    if framework_slug:
        articles = articles.filter(frameworks__slug=framework_slug)

    context = {
        'articles': articles,
        'categories': categories,
        'frameworks': frameworks,
    }
    return render(request, 'posts/uploads.html', context)
