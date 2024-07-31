from django.contrib import messages
from django.http import JsonResponse
from .forms import SubscriptionForm
from .models import Subscriber
from django.core.mail import send_mail
from django.shortcuts import get_object_or_404, render, redirect
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
                return JsonResponse({'status': 'success', 'message': 'You have successfully subscribed to our newsletter!'})
            else:
                return JsonResponse({'status': 'info', 'message': 'This email is already subscribed.'})
        return JsonResponse({'status': 'error', 'message': 'Error! Invalid form input.'}, status=400)
    return JsonResponse({'status': 'error', 'message': 'Invalid request method.'}, status=400)

def unsubscribe(request, email):
    if request.method == 'POST':
        subscriber = get_object_or_404(Subscriber, email=email)
        subscriber.delete()
        return JsonResponse({'status': 'success', 'message': 'You have successfully unsubscribed from our newsletter.'})
    return JsonResponse({'status': 'error', 'message': 'Invalid request method.'}, status=400)

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