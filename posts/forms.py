from django import forms

class SearchForm(forms.Form):
    query = forms.CharField(
        max_length=255,
        required=False,
        label='Search',
        widget=forms.TextInput(attrs={
            'class': 'w-full border-none bg-transparent px-4 py-1 text-gray-400 outline-none focus:outline-none',
            'placeholder': 'Search...'
        })
    )