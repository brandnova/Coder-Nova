# Generated by Django 5.0.7 on 2024-07-29 00:37

import django.utils.timezone
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('newsletter', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='subscriber',
            name='date_subscribed',
        ),
        migrations.AddField(
            model_name='subscriber',
            name='subscribed_at',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]
