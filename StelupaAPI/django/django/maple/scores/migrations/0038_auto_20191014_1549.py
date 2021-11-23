# Generated by Django 2.2.5 on 2019-10-14 04:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0037_recording'),
    ]

    operations = [
        migrations.RenameField(
            model_name='work',
            old_name='composed_date_end',
            new_name='composed_end_date',
        ),
        migrations.RenameField(
            model_name='work',
            old_name='composed_date_start',
            new_name='composed_start_date',
        ),
        migrations.RemoveField(
            model_name='work',
            name='composed_date_end_approximate_to',
        ),
        migrations.RemoveField(
            model_name='work',
            name='publication_date_approximate_to',
        ),
        migrations.AddField(
            model_name='work',
            name='composed_date_end_is_approximate',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='work',
            name='composed_start_end_is_approximate',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='work',
            name='publication_date_is_approximate',
            field=models.BooleanField(default=True),
        ),
    ]
