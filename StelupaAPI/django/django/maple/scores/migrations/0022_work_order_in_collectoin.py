# Generated by Django 2.2.4 on 2019-09-05 06:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0021_auto_20190904_1437'),
    ]

    operations = [
        migrations.AddField(
            model_name='work',
            name='order_in_collectoin',
            field=models.CharField(default='Not applicable', max_length=255),
        ),
    ]
