# Generated by Django 2.2.4 on 2019-09-04 04:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0019_auto_20190904_1402'),
    ]

    operations = [
        migrations.AddField(
            model_name='work',
            name='composed_date_approximate_to',
            field=models.CharField(default='Not availabe', max_length=255),
        ),
    ]