from datetime import datetime
from django.core.mail import send_mail
from django.conf import settings
from django.core.mail import EmailMessage
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from core.models import SiteSettings
from .models import Subscriber

def send_notification(subject, message):
    subscribers = Subscriber.objects.filter(is_subscribed=True)
    recipient_list = [sub.email for sub in subscribers]
    send_mail(
        subject,
        message,
        settings.DEFAULT_FROM_EMAIL,
        recipient_list
    )

def send_registration_email(user):
    site_settings = SiteSettings.objects.first()
    subject = f"Welcome to {site_settings.site_name}"
    html_message = render_to_string('newsletter/welcome_email.html', {
        'user': user,
        'site_name': site_settings.site_name,
        'contact_email': site_settings.contact_email,
        'site_logo_url': site_settings.logo.url if site_settings.logo else '',
        'current_year': datetime.now().year,
    })
    plain_message = strip_tags(html_message)
    from_email = site_settings.contact_email
    to_email = user.email

    email = EmailMessage(subject, html_message, from_email, [to_email])
    email.content_subtype = 'html'
    email.send()

def send_bulk_email(bulk_email):
    site_settings = SiteSettings.objects.first()
    if not site_settings:
        print("No site settings found")
        return
    
    subscribers = Subscriber.objects.all()
    
    for subscriber in subscribers:
        subject = bulk_email.subject
        html_message = render_to_string('newsletter/bulk_email.html', {
            'message': bulk_email.message,
            'site_name': site_settings.site_name,
            'contact_email': site_settings.contact_email,
            'site_logo_url': site_settings.logo.url if site_settings.logo else '',
            'site_url': site_settings.og_url,
            'current_year': datetime.now().year,
        })
        plain_message = strip_tags(html_message)
        from_email = site_settings.contact_email
        to_email = subscriber.email

        send_mail(subject, plain_message, from_email, [to_email], html_message=html_message)