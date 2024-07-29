from django.urls import path
from .views import article_detail, uploads, like_article, dislike_article, toggle_bookmark, search_articles

urlpatterns = [
    path('article/<slug:slug>/', article_detail, name='article_detail'),
    path('uploads/', uploads, name='uploads'),
    path('article/<slug:slug>/like/', like_article, name='like_article'),
    path('article/<slug:slug>/dislike/', dislike_article, name='dislike_article'),
    path('toggle-bookmark/<slug:slug>/', toggle_bookmark, name='toggle_bookmark'),
    path('search/', search_articles, name='search_articles'),
]
