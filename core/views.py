from django.shortcuts import render
from newsletter.forms import SubscriptionForm
from posts.models import Article, Category, Framework
from posts.forms import SearchForm

def index(request):
    category_slug = request.GET.get('category')
    s_form = SearchForm()
    n_form = SubscriptionForm()
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
        's_form': s_form,
        'n_form': n_form,
    }
    return render(request, 'core/index.html', context)
