from django.contrib import admin
from .models import Article, ArticleView, Category, Framework, Comment, Reaction, CustomTag

@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', 'author', 'status', 'published_date', 'updated_date')
    list_filter = ('status', 'published_date', 'author', 'category')
    search_fields = ('title', 'content')
    prepopulated_fields = {'slug': ('title',)}
    date_hierarchy = 'published_date'
    ordering = ('status', 'published_date')
    filter_horizontal = ('frameworks',)
    fieldsets = (
        ('General Information', {
            'fields': ('title', 'slug', 'author', 'type', 'category', 'tags', 'frameworks')
        }),
        ('Content', {
            'fields': ('content', 'excerpt', 'image'),
        }),
        ('Publication Details', {
            'fields': ('status', 'reading_time', 'views', 'allow_comments'),
            'classes': ('collapse',),
        }),
        ('SEO Settings', {
            'fields': ('seo_title', 'meta_description', 'meta_keywords'),
            'classes': ('collapse',),
        }),
        ('Additional Options', {
            'fields': ('featured', 'file_url', 'youtube_url', 'references'),
        }),
    )

@admin.register(Reaction)
class ReactionAdmin(admin.ModelAdmin):
    list_display = ('user', 'article', 'reaction_type', 'created_at')
    list_filter = ('article', 'reaction_type', 'created_at')
    search_fields = ('user__username', 'article__title')


@admin.register(CustomTag)
class CustomTagAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ('name',)


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

class ArticleViewAdmin(admin.ModelAdmin):
    list_display = ('article', 'ip_address', 'viewed_on')
    list_filter = ('article', 'user_agent')
    date_hierarchy = 'viewed_on'

admin.site.register(ArticleView, ArticleViewAdmin)


