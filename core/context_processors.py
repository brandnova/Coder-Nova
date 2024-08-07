from datetime import datetime, date
from .models import SiteSettings, StaticPage
from ads.models import Ad

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

def ad_context_processor(request):
    today = date.today()
    ads = Ad.objects.filter(active=True, start_date__lte=today, end_date__gte=today)
    ad_dict = {}
    for ad in ads:
        ad_dict[ad.location] = ad
    return {'ads': ad_dict}
