# Generated by Django 5.0.7 on 2024-07-28 14:04

import ckeditor_uploader.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='SiteSettings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('site_name', models.CharField(max_length=100)),
                ('site_description', models.TextField()),
                ('favicon', models.ImageField(blank=True, null=True, upload_to='Site_images/')),
                ('logo', models.ImageField(blank=True, null=True, upload_to='Site_images/')),
                ('address', models.CharField(max_length=255, null=True)),
                ('contact_email', models.EmailField(max_length=254)),
                ('phone_number', models.CharField(max_length=20)),
                ('meta_keywords', models.CharField(help_text='Comma-separated SEO keywords for the site', max_length=255)),
                ('meta_description', models.CharField(help_text='Meta description for the site', max_length=255)),
                ('meta_author', models.CharField(help_text='Author of the site content', max_length=100)),
                ('og_title', models.CharField(help_text='Open Graph title for the site', max_length=255)),
                ('og_description', models.CharField(help_text='Open Graph description for the site', max_length=255)),
                ('og_image', models.ImageField(blank=True, help_text='Open Graph image for the site', null=True, upload_to='meta_images/')),
                ('og_url', models.URLField(help_text='Open Graph URL for the site')),
            ],
        ),
        migrations.CreateModel(
            name='StaticPage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('slug', models.SlugField(unique=True)),
                ('content', ckeditor_uploader.fields.RichTextUploadingField()),
            ],
        ),
    ]