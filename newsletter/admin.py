from django.contrib import admin
from .models import Subscriber, BulkEmail
from .utils import send_bulk_email

@admin.action(description='Send Bulk Email')
def send_bulk_email_action(modeladmin, request, queryset):
    for bulk_email in queryset:
        send_bulk_email(bulk_email)
    modeladmin.message_user(request, "Bulk email sent successfully")

class SubscriberAdmin(admin.ModelAdmin):
    list_display = ('email', 'get_subscribed_at')
    search_fields = ('email',)
    list_filter = ('subscribed_at',)
    readonly_fields = ('subscribed_at',)

    def get_subscribed_at(self, obj):
        return obj.subscribed_at
    get_subscribed_at.short_description = 'Subscribed At'

class BulkEmailAdmin(admin.ModelAdmin):
    list_display = ('subject', 'created_at')
    actions = [send_bulk_email_action]

admin.site.register(Subscriber, SubscriberAdmin)
admin.site.register(BulkEmail, BulkEmailAdmin)
