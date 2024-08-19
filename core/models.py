from django.db import models
from django.contrib.auth.models import User
from django_ckeditor_5.fields import CKEditor5Field # type: ignore
from django.core.validators import URLValidator
from django.core.exceptions import ValidationError

class SingletonModelManager(models.Manager):
    def get_or_create(self):
        try:
            return self.get_queryset().get(), False
        except self.model.DoesNotExist:
            return self.create(), True

class SocialLink(models.Model):
    name = models.CharField(max_length=50)
    url = models.URLField(validators=[URLValidator()])
    icon_class = models.CharField(max_length=50, help_text="Bootstrap icon class")
    order = models.PositiveIntegerField(default=0, blank=False, null=False)
    is_active = models.BooleanField(default=True)

    class Meta:
        ordering = ['order']

    def __str__(self):
        return self.name

class SiteSettings(models.Model):
    site_name = models.CharField(max_length=100)
    site_description = models.TextField()
    favicon = models.ImageField(upload_to='Site_images/', null=True, blank=True)
    logo = models.ImageField(upload_to='Site_images/', null=True, blank=True)
    address = models.CharField(max_length=255, null=True)
    contact_email = models.EmailField()
    phone_number = models.CharField(max_length=20)
    social_links = models.ManyToManyField(SocialLink, blank=True)
    
    # Meta Tags Fields
    meta_keywords = models.CharField(max_length=255, help_text="Comma-separated SEO keywords for the site")
    meta_description = models.CharField(max_length=255, help_text="Meta description for the site")
    meta_author = models.CharField(max_length=100, help_text="Author of the site content")
    
    # Open Graph Tags
    og_title = models.CharField(max_length=255, help_text="Open Graph title for the site")
    og_description = models.CharField(max_length=255, help_text="Open Graph description for the site")
    og_image = models.ImageField(upload_to='meta_images/', blank=True, null=True, help_text="Open Graph image for the site")
    og_url = models.URLField(help_text="Open Graph URL for the site")

    objects = SingletonModelManager()
    
    def get_active_social_links(self):
        return self.social_links.filter(is_active=True).order_by('order')
    
    def save(self, *args, **kwargs):
        if not self.pk and SiteSettings.objects.exists():
            raise ValidationError('There can be only one SiteSettings instance')
        return super(SiteSettings, self).save(*args, **kwargs)

    def delete(self, *args, **kwargs):
        pass  # Prevent deletion of the single instance

    @classmethod
    def load(cls):
        obj, created = cls.objects.get_or_create()
        return obj

    def __str__(self):
        return self.site_name

    class Meta:
        verbose_name = "Site Settings"
        verbose_name_plural = "Site Settings"

class StaticPage(models.Model):
    title = models.CharField(max_length=200)
    slug = models.SlugField(unique=True)
    content = CKEditor5Field('Content', config_name='default')

    def __str__(self):
        return self.title