# Generated by Django 2.2.4 on 2019-08-16 03:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('musicians', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='musician',
            name='birth_date',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='musician',
            name='birth_location_latitude',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='musician',
            name='birth_location_longitude',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='musician',
            name='birth_nationality',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='musician',
            name='death_date',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='musician',
            name='death_location_latitude',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='musician',
            name='death_location_longitude',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='musician',
            name='death_nationality',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='musician',
            name='musician_type',
            field=models.CharField(default='Not available', max_length=255),
        ),
    ]