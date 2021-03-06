# Generated by Django 2.2.4 on 2019-08-17 00:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('musicians', '0004_period_location'),
    ]

    operations = [
        migrations.AlterField(
            model_name='musician',
            name='birth_location_latitude',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='musician',
            name='birth_location_longitude',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='musician',
            name='country_of_predominant_residency',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='musician',
            name='death_location_latitude',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='musician',
            name='death_location_longitude',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='period',
            name='location_based_in_latitude',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='period',
            name='location_based_in_longitude',
            field=models.CharField(default='Not available', max_length=255),
        ),
    ]
