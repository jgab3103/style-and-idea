# Generated by Django 2.2.4 on 2019-08-17 11:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('musicians', '0005_auto_20190817_1032'),
    ]

    operations = [
        migrations.AddField(
            model_name='musician',
            name='birth_location',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AddField(
            model_name='musician',
            name='death_location',
            field=models.CharField(default='Not available', max_length=255),
        ),
    ]