from django.shortcuts import get_object_or_404, render
from newsletter.forms import SubscriptionForm
from posts.models import Article, Category, Framework
from posts.forms import SearchForm
from django.core.paginator import Paginator
from .models import StaticPage

def index(request):
    category_slug = request.GET.get('category')
    page_number = request.GET.get('page')  # Get the current page number from the query parameters
    s_form = SearchForm()
    n_form = SubscriptionForm()

    if category_slug:
        articles_list = Article.objects.filter(category__slug=category_slug, status='published').order_by('-published_date')
    else:
        articles_list = Article.objects.filter(status='published').order_by('-id')

    # Paginate the articles list
    paginator = Paginator(articles_list, 10)  # Show 10 articles per page
    articles = paginator.get_page(page_number)  # Get the articles for the current page

    categories = Category.objects.all()
    frameworks = Framework.objects.all()
    featured = Article.objects.filter(status='published', featured=True).order_by('?')[:4]

    context = {
        'articles': articles,
        'categories': categories,
        'frameworks': frameworks,
        's_form': s_form,
        'n_form': n_form,
        'featured': featured,
    }
    return render(request, 'core/index.html', context)


def static_page(request, slug):
    page = get_object_or_404(StaticPage, slug=slug)
    n_form = SubscriptionForm()
    context = {
        'page': page,
        'n_form': n_form,
    }
    return render(request, 'core/static-page.html', context)