# Generated by Django 2.0.1 on 2018-01-25 03:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('member', '0003_remove_member_address'),
    ]

    operations = [
        migrations.AddField(
            model_name='member',
            name='tel',
            field=models.CharField(default='0983010908', max_length=20),
            preserve_default=False,
        ),
    ]
