from django.urls import path
from .views import article_detail, uploads, projects, like_article, dislike_article, toggle_bookmark, draft_detail, permission_denied_view, diy_detail

urlpatterns = [
    path('article/<slug:slug>/', article_detail, name='article_detail'),
    path('project/<slug:slug>/', diy_detail, name='diy_detail'),
    path('draft/<slug:slug>/', draft_detail, name='draft_detail'),
    path('uploads/', uploads, name='uploads'),
    path('projects/', projects, name='projects'),
    path('article/<slug:slug>/like/', like_article, name='like_article'),
    path('article/<slug:slug>/dislike/', dislike_article, name='dislike_article'),
    path('toggle-bookmark/<slug:slug>/', toggle_bookmark, name='toggle_bookmark'),
    path('permission-denied/', permission_denied_view, name='permission_denied'),
]

