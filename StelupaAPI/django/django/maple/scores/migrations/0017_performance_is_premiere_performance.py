# Generated by Django 2.2.4 on 2019-08-16 04:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0016_auto_20190816_1406'),
    ]

    operations = [
        migrations.AddField(
            model_name='performance',
            name='is_premiere_performance',
            field=models.FloatField(default=False),
        ),
    ]
