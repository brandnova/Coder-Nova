from .models import SiteSettings, StaticPage

def site_settings_processor(request):
    try:
        site_settings = SiteSettings.objects.first()
    except SiteSettings.DoesNotExist:
        site_settings = None
    return {
        'site_settings': site_settings
    }

def static_pages_processor(request):
    pages = StaticPage.objects.all()
    return {
        'static_pages': pages
    }