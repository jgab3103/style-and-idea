# Generated by Django 2.2.4 on 2019-08-16 03:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('musicians', '0002_auto_20190816_1347'),
    ]

    operations = [
        migrations.AddField(
            model_name='musician',
            name='primary_instrument',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='period',
            name='end_date',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='period',
            name='period_description',
            field=models.TextField(default='Not available'),
        ),
        migrations.AlterField(
            model_name='period',
            name='period_type',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='period',
            name='start_date',
            field=models.DateField(blank=True, null=True),
        ),
    ]