from django.contrib import messages
from .forms import SubscriptionForm
from .models import Subscriber
from django.core.mail import send_mail
from django.shortcuts import render, redirect
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from .forms import BulkEmailForm
from core.models import SiteSettings


def subscribe(request):
    if request.method == 'POST':
        form = SubscriptionForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data['email']
            if not Subscriber.objects.filter(email=email).exists():
                Subscriber.objects.create(email=email)
                messages.success(request, 'You have successfully subscribed to our newsletter!')
            else:
                messages.info(request, 'You are already subscribed.')
            return redirect(request.META.get('HTTP_REFERER', 'home'))  # Redirect to the referring page
    return redirect('home')  # Fallback redirection

def send_bulk_email(request):
    site_settings = SiteSettings.objects.first()

    if request.method == 'POST':
        form = BulkEmailForm(request.POST)
        if form.is_valid():
            subject = form.cleaned_data['subject']
            message = form.cleaned_data['message']
            from_email = site_settings.contact_email

            subscribers = Subscriber.objects.all()
            for subscriber in subscribers:
                html_message = render_to_string('newsletter/email_template.html', {
                    'message': message,
                    'site_settings': site_settings
                })
                plain_message = strip_tags(html_message)

                send_mail(
                    subject,
                    plain_message,
                    from_email,
                    [subscriber.email],
                    html_message=html_message,
                )
            return redirect('success_page') 

    else:
        form = BulkEmailForm()

    return render(request, 'newsletter/send_bulk_email.html', {'form': form})