# Generated by Django 2.2.4 on 2019-09-06 03:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0026_work_creation_location'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='performance',
            name='is_premiere_performance',
        ),
        migrations.AddField(
            model_name='performance',
            name='had_premiere_performance',
            field=models.BooleanField(default=False),
        ),
    ]