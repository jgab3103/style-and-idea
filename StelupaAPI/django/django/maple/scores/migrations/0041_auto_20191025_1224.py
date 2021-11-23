# Generated by Django 2.2.5 on 2019-10-25 01:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0040_auto_20191018_1022'),
    ]

    operations = [
        migrations.AddField(
            model_name='instrument',
            name='highest_midi_pitch',
            field=models.IntegerField(default=1000),
        ),
        migrations.AddField(
            model_name='instrument',
            name='is_pitched_instrument',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='instrument',
            name='lowest_midi_pitch',
            field=models.IntegerField(default=1000),
        ),
    ]
