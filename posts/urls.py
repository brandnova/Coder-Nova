from django.urls import path
from .views import article_detail, uploads, like_article, dislike_article, toggle_bookmark, search_articles, draft_detail, permission_denied_view

urlpatterns = [
    path('article/<slug:slug>/', article_detail, name='article_detail'),
    path('draft/<slug:slug>/', draft_detail, name='draft_detail'),
    path('uploads/', uploads, name='uploads'),
    path('article/<slug:slug>/like/', like_article, name='like_article'),
    path('article/<slug:slug>/dislike/', dislike_article, name='dislike_article'),
    path('toggle-bookmark/<slug:slug>/', toggle_bookmark, name='toggle_bookmark'),
    path('search/', search_articles, name='search_articles'),
    path('permission-denied/', permission_denied_view, name='permission_denied'),
]

