# Generated by Django 2.2.4 on 2019-09-05 10:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0024_auto_20190905_1606'),
    ]

    operations = [
        migrations.AddField(
            model_name='performance',
            name='performance_date_approximate_to',
            field=models.CharField(default='Not available', max_length=255),
        ),
        migrations.AlterField(
            model_name='work',
            name='date_composed_approximate_to',
            field=models.CharField(default='Not available', max_length=255),
        ),
    ]
