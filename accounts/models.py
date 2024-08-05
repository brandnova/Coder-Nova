from django.db import models
from ckeditor.fields import RichTextField  # type: ignore
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from posts.models import Article

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    bio = models.TextField(blank=True, null=True)
    avatar = models.ImageField(default='default.jpg', upload_to='profile_images', null=True, blank=True)
    cover_image = models.ImageField(default='default.jpg', upload_to='cover_images',null=True, blank=True)
    phone = models.CharField(max_length=20, null=True, blank=True)
    bookmarks = models.ManyToManyField(Article, related_name='article_bookmark', blank=True)

    def __str__(self):
        return f'{self.user.username}\'s Profile'

@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)

@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()

class InfoContent(models.Model):
    title = models.CharField(max_length=200)
    content = RichTextField()
    section_id = models.SlugField(max_length=50, unique=True)

    def __str__(self):
        return self.title
