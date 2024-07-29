from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField # type: ignore
from django.utils.text import slugify
from django.contrib.auth.models import User
from taggit.managers import TaggableManager # type: ignore

class Category(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100, unique=True)
    
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.name)
        super().save(*args, **kwargs)

    def __str__(self):
        return self.name

class Framework(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100, unique=True)
    
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.name)
        super().save(*args, **kwargs)

    def __str__(self):
        return self.name

class Article(models.Model):
    STATUS_CHOICES = (
        ('draft', 'Draft'),
        ('published', 'Published'),
    )
    CONTENT_TYPE = [
    ('article', 'Article'),
    ('diy', 'DIY Project'),
]
    
    title = models.CharField(max_length=255)
    slug = models.SlugField(max_length=255, unique=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    type = models.CharField(max_length=20, choices=CONTENT_TYPE, default='article')
    content = RichTextUploadingField()
    excerpt = models.TextField(max_length=500, blank=True)
    image = models.ImageField(upload_to='articles/', blank=True, null=True)
    published_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='draft')
    tags = TaggableManager()
    category = models.ForeignKey(Category, related_name='articles', on_delete=models.CASCADE)
    frameworks = models.ManyToManyField(Framework, related_name='articles')
    reading_time = models.PositiveIntegerField(blank=True, null=True)
    views = models.PositiveIntegerField(default=0)
    likes = models.ManyToManyField(User, related_name='article_likes', blank=True)
    dislikes = models.ManyToManyField(User, related_name='article_dislikes', blank=True)
    seo_title = models.CharField(max_length=255, blank=True)
    meta_description = models.TextField(max_length=160, blank=True)
    meta_keywords = models.CharField(max_length=255, blank=True)
    allow_comments = models.BooleanField(default=True)
    featured = models.BooleanField(default=False)
    references = models.TextField(blank=True)
    
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.title)
        super().save(*args, **kwargs)

    def __str__(self):
        return self.title

class Comment(models.Model):
    article = models.ForeignKey(Article, related_name='comments', on_delete=models.CASCADE)
    name = models.CharField(max_length=255, blank=True, null=True)
    email = models.EmailField(blank=True, null=True)
    comment = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    approved = models.BooleanField(default=False)
    
    def __str__(self):
        return f'Comment by {self.name if self.name else "Anonymous"} on {self.article}'

class Bookmark(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='bookmarks')
    article = models.ForeignKey(Article, on_delete=models.CASCADE, related_name='bookmarked_by')

    def __str__(self):
        return f'{self.user.username} bookmarked {self.article.title}'