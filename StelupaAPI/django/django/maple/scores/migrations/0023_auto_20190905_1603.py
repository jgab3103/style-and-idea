# Generated by Django 2.2.4 on 2019-09-05 06:03

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0022_work_order_in_collectoin'),
    ]

    operations = [
        migrations.RenameField(
            model_name='work',
            old_name='order_in_collectoin',
            new_name='order_in_collection',
        ),
    ]
