# Generated by Django 2.2.4 on 2019-09-04 03:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0017_performance_is_premiere_performance'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='work',
            name='static_tempo',
        ),
        migrations.AddField(
            model_name='work',
            name='tempo_remains_constant',
            field=models.BooleanField(default=False),
        ),
    ]
