from django.contrib import admin
from .models import Article, Category, Framework, Comment

@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', 'author', 'status', 'published_date', 'updated_date')
    list_filter = ('status', 'published_date', 'author', 'category', 'tags')
    search_fields = ('title', 'content')
    prepopulated_fields = {'slug': ('title',)}
    # raw_id_fields = ('author',)
    date_hierarchy = 'published_date'
    ordering = ('status', 'published_date')
    filter_horizontal = ('frameworks',)

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ('name',)

@admin.register(Framework)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ('name',)


admin.site.register(Comment)
