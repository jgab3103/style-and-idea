# Generated by Django 2.2.5 on 2019-10-25 01:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0041_auto_20191025_1224'),
    ]

    operations = [
        migrations.AlterField(
            model_name='instrument',
            name='highest_midi_pitch',
            field=models.CharField(default='XX', max_length=5),
        ),
        migrations.AlterField(
            model_name='instrument',
            name='lowest_midi_pitch',
            field=models.CharField(default='XX', max_length=5),
        ),
    ]
