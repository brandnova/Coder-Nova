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
@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display = ['comment_display', 'email', 'created_at', 'approved']
    list_filter = ['approved', 'created_at']
    search_fields = ['name', 'email', 'comment']
    list_editable = ['approved']
    
    def comment_display(self, obj):
        return str(obj)
    
    comment_display.short_description = 'Comment'