from django.urls import path
from .views import article_detail, uploads, like_article, dislike_article

urlpatterns = [
    path('article/<slug:slug>/', article_detail, name='article_detail'),
    path('uploads/', uploads, name='uploads'),
    path('article/<slug:slug>/like/', like_article, name='like_article'),
    path('article/<slug:slug>/dislike/', dislike_article, name='dislike_article'),
]
