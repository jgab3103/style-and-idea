# Generated by Django 2.1.3 on 2018-11-09 11:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apps_and_notebooks', '0004_auto_20181109_0728'),
    ]

    operations = [
        migrations.RenameField(
            model_name='appornotebook',
            old_name='date_created',
            new_name='release_date',
        ),
        migrations.AddField(
            model_name='appornotebook',
            name='tags',
            field=models.CharField(default='blah', max_length=255),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='appornotebook',
            name='version',
            field=models.FloatField(default=1.2),
            preserve_default=False,
        ),
    ]