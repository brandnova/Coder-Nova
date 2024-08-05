from django.contrib import admin
from django.contrib.auth.models import Group
from .models import Profile, InfoContent


@admin.register(Profile)
class ProfileAdmin(admin.ModelAdmin):
    list_display = ('user', 'phone')
    search_fields = ('user__username', 'user__email')


@admin.register(InfoContent)
class InfoContentAdmin(admin.ModelAdmin):
    list_display = ('title', 'section_id')