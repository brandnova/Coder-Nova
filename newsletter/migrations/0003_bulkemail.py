# Generated by Django 5.0.7 on 2024-07-29 03:15

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
        ('newsletter', '0002_remove_subscriber_date_subscribed_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='BulkEmail',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('subject', models.CharField(max_length=255)),
                ('message', models.TextField()),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('site_settings', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='bulk_emails', to='core.sitesettings')),
            ],
        ),
    ]