from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, PasswordChangeForm
from django.contrib.auth import get_user_model
from .models import Profile

class UserRegisterForm(UserCreationForm):
    email = forms.EmailField(
        required=True,
        widget=forms.EmailInput(attrs={
            'class': 'mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900',
            'placeholder': 'Enter Email',
        })
    )
    first_name = forms.CharField(
        max_length=30,
        required=True,
        widget=forms.TextInput(attrs={
            'class': 'mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900',
            'placeholder': 'First Name',
        })
    )
    last_name = forms.CharField(
        max_length=30,
        required=True,
        widget=forms.TextInput(attrs={
            'class': 'mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900',
            'placeholder': 'Last Name',
        })
    )
    terms_and_privacy = forms.BooleanField(
        required=True,
        widget=forms.CheckboxInput(attrs={
            'class': 'mr-2 focus:ring-0 rounded',
        }),
        error_messages={'required': 'You must agree to the terms and privacy policy.'}
    )

    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'username', 'email', 'password1', 'password2']

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['username'].widget.attrs.update({
            'class': 'mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900',
            'placeholder': 'Username',
        })
        self.fields['password1'].widget.attrs.update({
            'class': 'flex-1 p-2 border pr-10 border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900',
            'placeholder': 'Enter Password',
            ':type': 'show ? \'text\': \'password\'',
        })
        self.fields['password2'].widget.attrs.update({
            'class': 'flex-1 p-2 pr-10 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900',
            'placeholder': 'Repeat Password',
            ':type': 'show ? \'text\': \'password\'',
        })
    
class CustomAuthenticationForm(AuthenticationForm):
    class Meta:
        model = get_user_model()
        fields = ('username', 'password')

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field_name, field in self.fields.items():
            field.widget.attrs['class'] = 'text-gray-900 mt-1 p-2 w-full border rounded-md focus:border-gray-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-300 transition-colors duration-300'
            field.widget.attrs['placeholder'] = 'Enter ' + field_name.replace('_', ' ').capitalize()



class UserUpdateForm(forms.ModelForm):
    first_name = forms.CharField(max_length=30, widget=forms.TextInput(attrs={'class': 'w-full mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900'}))
    last_name = forms.CharField(max_length=30, widget=forms.TextInput(attrs={'class': 'w-full mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900'}))
    email = forms.EmailField(widget=forms.EmailInput(attrs={'class': 'w-full mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900'}))

    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'username', 'email']

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['username'].widget.attrs.update({'class': 'w-full mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900'})

class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['phone', 'avatar', 'cover_image', 'bio']
        widgets = {
            'phone': forms.TextInput(attrs={'class': 'w-full mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900'}),
            'avatar': forms.FileInput(attrs={'class': 'w-full bg-white mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900'}),
            'cover_image': forms.FileInput(attrs={'class': 'w-full bg-white mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900'}),
            'bio': forms.Textarea(attrs={'class': 'w-full mt-2 p-2 border border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900'}),
        }

class CustomPasswordChangeForm(PasswordChangeForm):
    old_password = forms.CharField(
        widget=forms.PasswordInput(attrs={'class': 'flex-1 my-3 p-2 border pr-10 border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900', 'placeholder': 'Old Password'})
    )
    new_password1 = forms.CharField(
        widget=forms.PasswordInput(attrs={'class': 'flex-1 my-3 p-2 border pr-10 border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900', 'placeholder': 'New Password'})
    )
    new_password2 = forms.CharField(
        widget=forms.PasswordInput(attrs={'class': 'flex-1 my-3 p-2 border pr-10 border-gray-300 focus:outline-none focus:ring-0 focus:border-gray-300 rounded text-sm text-gray-900', 'placeholder': 'Confirm New Password'})
    )