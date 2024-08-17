from django import forms
from .models import Subscriber

class SubscriptionForm(forms.ModelForm):
    class Meta:
        model = Subscriber
        fields = ['fullname', 'email']
        widgets = {
            'fullname': forms.TextInput(attrs={
                'class': 'mx-2 px-4 py-2 text-gray-700 bg-white border border-gray-800 rounded-md focus:border-blue-400 dark:focus:border-blue-300 focus:outline-none focus:ring focus:ring-opacity-40 focus:ring-blue-300',
                'placeholder': 'Full Name'
            }),
            'email': forms.EmailInput(attrs={
                'class': 'mx-2 px-4 py-2 text-gray-700 bg-white border border-gray-800 rounded-md focus:border-blue-400 dark:focus:border-blue-300 focus:outline-none focus:ring focus:ring-opacity-40 focus:ring-blue-300',
                'placeholder': 'Email Address'
            }),
        }
        labels = {
            'fullname': '',
            'email': '',
        }

class BulkEmailForm(forms.Form):
    subject = forms.CharField(max_length=255, required=True)
    message = forms.CharField(widget=forms.Textarea, required=True)