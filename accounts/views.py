from django.shortcuts import get_object_or_404, render, redirect
from django.contrib.auth import login, update_session_auth_hash, logout
from django.contrib.auth.decorators import login_required
from newsletter.forms import SubscriptionForm
from newsletter.models import Subscriber
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm, CustomAuthenticationForm, CustomPasswordChangeForm
from django.contrib import messages
from posts.models import Article
from .models import InfoContent, Profile
from newsletter.utils import send_registration_email

def register(request):
    # Redirect authenticated users to the profile page
    if request.user.is_authenticated:
        return redirect('profile')
    
    # Process form submission
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)  # Log the user in after registration
            username = form.cleaned_data.get('username')
            messages.success(request, f'Account created for {username}!')
            return redirect('profile')  # Redirect to profile page after successful registration
    else:
        form = UserRegisterForm()
    
    # Render registration form for GET request
    return render(request, 'accounts/register.html', {'form': form})


def login_view(request):
    if request.user.is_authenticated:
        return redirect('profile')
    
    if request.method == 'POST':
        form = CustomAuthenticationForm(request, data=request.POST)
        if form.is_valid():
            user = form.get_user()
            login(request, user)

            if not request.POST.get('remember_me'):
                request.session.set_expiry(0)  # Expire the session when the browser is closed
            else:
                request.session.set_expiry(1209600)  # 2 weeks in seconds
            
            return redirect('profile')
    else:
        form = CustomAuthenticationForm()

    return render(request, 'accounts/login.html', {'form': form})

def logout_view(request):
    if request.method == 'POST':
        logout(request)

        # Get the referring page
        referer = request.META.get('HTTP_REFERER')
        if referer:
            return redirect(referer)
        else:
            return redirect('login')



@login_required
def profile(request):
    u_form = UserUpdateForm(request.POST or None, instance=request.user)
    p_form = ProfileUpdateForm(request.POST or None, request.FILES or None, instance=request.user.profile)
    n_form = SubscriptionForm()
    bookmarks = request.user.profile.bookmarks.all()
    drafts = Article.objects.filter(status='draft').order_by('-published_date')
    posts_a = Article.objects.filter(status='published', type='article').order_by('-published_date')
    posts_p = Article.objects.filter(status='published', type='diy').order_by('-published_date')
    sections = InfoContent.objects.all()

    is_subscribed = Subscriber.objects.filter(email=request.user.email).exists()

    
    if request.method == 'POST':
        if u_form.is_valid() and p_form.is_valid():
            u_form.save()
            p_form.save()
            messages.success(request, 'Your profile has been updated!')
            return redirect('profile')

    context = {
        'u_form': u_form,
        'p_form': p_form,
        'n_form': n_form,
        'bookmarks': bookmarks,
        'drafts': drafts,
        'posts_a': posts_a,
        'posts_p': posts_p,
        'sections': sections,
        'is_subscribed': is_subscribed,
    }

    return render(request, 'accounts/profile.html', context)


@login_required
def password_change(request):
    if request.method == 'POST':
        form = CustomPasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important to keep the user logged in
            messages.success(request, 'Your password was successfully updated!')
            return redirect('profile')
        else:
            messages.error(request, 'Please correct the error below.')
    else:
        form = CustomPasswordChangeForm(request.user)
    return render(request, 'accounts/password_change.html', {'form': form,})