# Generated by Django 2.2.4 on 2019-08-06 11:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0008_work_instrumentation_setting'),
    ]

    operations = [
        migrations.AddField(
            model_name='work',
            name='tonality',
            field=models.CharField(default='d maj', max_length=255),
            preserve_default=False,
        ),
    ]
