# Generated by Django 2.2.4 on 2019-08-16 03:48

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0013_auto_20190816_1343'),
    ]

    operations = [
        migrations.RenameField(
            model_name='work',
            old_name='notes',
            new_name='performance_notes',
        ),
    ]