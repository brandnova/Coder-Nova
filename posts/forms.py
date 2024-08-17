from django import forms

class SearchForm(forms.Form):
    query = forms.CharField(
        max_length=255,
        required=False,
        label='Search',
        widget=forms.TextInput(attrs={
            'class': 'w-full border border-gray-500 rounded-lg bg-transparent px-4 py-1 text-gray-400 outline-none focus:border-blue-400 dark:focus:border-blue-300 focus:outline-none focus:ring focus:ring-opacity-40 focus:ring-blue-300',
            'placeholder': 'Search...'
        })
    )