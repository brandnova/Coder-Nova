# from django.db.models.signals import pre_save, post_save
# from django.dispatch import receiver
# from django.core.mail import EmailMessage, send_mail
# from django.template.loader import render_to_string
# from django.urls import reverse
# from django.utils.html import strip_tags
# from .models import Subscriber
# from core.models import SiteSettings
# from posts.models import Article
# from datetime import datetime

# @receiver(pre_save, sender=Article)
# def check_status_change(sender, instance, **kwargs):
#     if instance.pk:  # If the article already exists (is being updated)
#         old_instance = Article.objects.get(pk=instance.pk)
#         instance._previous_status = old_instance.status

# @receiver(post_save, sender=Article)
# def send_new_post_notification(sender, instance, created, **kwargs):
#     if (created and instance.status == 'published') or (not created and hasattr(instance, '_previous_status') and instance._previous_status == 'draft' and instance.status == 'published'):
#         site_settings = SiteSettings.objects.first()
#         subscribers = Subscriber.objects.all()
#         post_url = reverse('article_detail', args=[instance.slug])

#         for subscriber in subscribers:
#             subject = f"New post on {site_settings.site_name}"
#             html_message = render_to_string('newsletter/new_post_email.html', {
#                 'site_settings': site_settings,
#                 'article': instance,
#                 'post_url': f"{site_settings.og_url}{post_url}",
#                 'site_name': site_settings.site_name,
#                 'contact_email': site_settings.contact_email,
#                 'site_url': site_settings.og_url,
#                 'site_logo_url': site_settings.logo.url if site_settings.logo else '',
#                 'current_year': datetime.now().year,
#                 'user': subscriber,  # Pass the subscriber object to the template
#             })
#             plain_message = strip_tags(html_message)
#             from_email = site_settings.contact_email
#             to = subscriber.email

#             email = EmailMessage(subject, html_message, from_email, [to])
#             email.content_subtype = 'html'
#             email.send()
