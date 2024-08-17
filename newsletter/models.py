from django.db import models
from django.utils import timezone
from core.models import SiteSettings

class Subscriber(models.Model):
    fullname = models.CharField(max_length=50, null=True)
    email = models.EmailField(unique=True)
    subscribed_at = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.email

class BulkEmail(models.Model):
    subject = models.CharField(max_length=255)
    message = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.subject