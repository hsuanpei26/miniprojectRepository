# Generated by Django 2.0.1 on 2018-01-12 06:38

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('member', '0002_member_address'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='member',
            name='address',
        ),
    ]
