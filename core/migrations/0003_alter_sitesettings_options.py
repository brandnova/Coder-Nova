# Generated by Django 5.0.7 on 2024-08-17 15:58

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_sociallink_sitesettings_social_links'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='sitesettings',
            options={'verbose_name': 'Site Settings', 'verbose_name_plural': 'Site Settings'},
        ),
    ]
