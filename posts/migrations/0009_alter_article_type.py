# Generated by Django 5.0.7 on 2024-07-28 22:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0008_article_type'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='type',
            field=models.CharField(choices=[('article', 'Article'), ('diy', 'DIY Project')], default='article', max_length=20),
        ),
    ]