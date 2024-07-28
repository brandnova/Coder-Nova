from django.shortcuts import render
from posts.models import Article, Category, Framework

def index(request):
    category_slug = request.GET.get('category')
    if category_slug:
        articles = Article.objects.filter(category__slug=category_slug, status='published').order_by('-published_date')
    else:
        articles = Article.objects.filter(status='published').order_by('-id')

    categories = Category.objects.all()
    frameworks = Framework.objects.all()

    context = {
        'articles': articles,
        'categories': categories,
        'frameworks': frameworks,
    }
    return render(request, 'core/index.html', context)
