# core/admin.py

from django.contrib import admin
from .models import SiteSettings, StaticPage, SocialLink

class SocialLinkInline(admin.TabularInline):
    model = SiteSettings.social_links.through
    extra = 1
    verbose_name = "Social Link"
    verbose_name_plural = "Social Links"

@admin.register(SiteSettings)
class SiteSettingsAdmin(admin.ModelAdmin):
    list_display = ('site_name', 'contact_email', 'phone_number', 'meta_keywords', 'meta_description', 'meta_author')
    inlines = [SocialLinkInline]
    fieldsets = (
        (None, {
            'fields': ('site_name', 'site_description', 'favicon', 'logo', 'address', 'contact_email', 'phone_number')
        }),
        ('Meta Tags', {
            'fields': ('meta_keywords', 'meta_description', 'meta_author')
        }),
        ('Open Graph Tags', {
            'fields': ('og_title', 'og_description', 'og_image', 'og_url')
        }),
    )

    def has_add_permission(self, request):
        return not SiteSettings.objects.exists()
    
    def get_exclude(self, request, obj=None):
        # Exclude 'social_links' from the main form as it's handled by the inline
        return ['social_links']

@admin.register(SocialLink)
class SocialLinkAdmin(admin.ModelAdmin):
    list_display = ('name', 'url', 'icon_class', 'order', 'is_active')
    list_editable = ('order', 'is_active')
    search_fields = ('name', 'url')
    list_filter = ('is_active',)

@admin.register(StaticPage)
class StaticPageAdmin(admin.ModelAdmin):
    list_display = ('title', 'slug')
    prepopulated_fields = {'slug': ('title',)}
    search_fields = ['title', 'content']

