from datetime import datetime
from .models import SiteSettings, StaticPage

def site_settings_processor(request):
    current_year = datetime.now().year
    try:
        site_settings = SiteSettings.objects.first()
    except SiteSettings.DoesNotExist:
        site_settings = None
    return {
        'site_settings': site_settings,
        'current_year': current_year
    }

def static_pages_processor(request):
    current_year = datetime.now().year

    pages = StaticPage.objects.all()
    return {
        'static_pages': pages,
        'current_year': current_year

    }