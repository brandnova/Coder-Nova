from django.urls import path
from .views import index, static_page

urlpatterns = [
    path('', index, name='index'),
    path('pages/<slug:slug>/', static_page, name='static_page'),
]
