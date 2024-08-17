from django.urls import path
from . import views  

urlpatterns = [
    path('article/<slug:slug>/', views.article_detail, name='article_detail'),
    path('project/<slug:slug>/', views.diy_detail, name='diy_detail'),
    path('draft/<slug:slug>/', views.draft_detail, name='draft_detail'),
    path('uploads/', views.uploads, name='uploads'),
    path('projects/', views.projects, name='projects'),
    path('article/<slug:slug>/react/', views.react_to_article, name='react_to_article'),   
    path('toggle-bookmark/<slug:slug>/', views.toggle_bookmark, name='toggle_bookmark'),
    path('permission-denied/', views.permission_denied_view, name='permission_denied'),
    path('author/<str:username>/', views.author_profile, name='author_profile'),
]

