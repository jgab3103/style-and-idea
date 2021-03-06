# Generated by Django 2.2.5 on 2019-09-23 04:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0031_work_score_available'),
    ]

    operations = [
        migrations.AddField(
            model_name='collection',
            name='verified',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='instrument',
            name='verified',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='note',
            name='verified',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='performance',
            name='verified',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='text',
            name='verified',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='work',
            name='verified',
            field=models.BooleanField(default=False),
        ),
    ]
