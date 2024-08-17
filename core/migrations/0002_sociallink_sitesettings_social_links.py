# Generated by Django 5.0.7 on 2024-08-17 15:35

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='SocialLink',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('url', models.URLField(validators=[django.core.validators.URLValidator()])),
                ('icon_class', models.CharField(help_text='Bootstrap icon class', max_length=50)),
                ('order', models.PositiveIntegerField(default=0)),
                ('is_active', models.BooleanField(default=True)),
            ],
            options={
                'ordering': ['order'],
            },
        ),
        migrations.AddField(
            model_name='sitesettings',
            name='social_links',
            field=models.ManyToManyField(blank=True, to='core.sociallink'),
        ),
    ]
