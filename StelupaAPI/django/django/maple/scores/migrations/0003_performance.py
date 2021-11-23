# Generated by Django 2.2.4 on 2019-08-06 11:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('scores', '0002_auto_20190806_2129'),
    ]

    operations = [
        migrations.CreateModel(
            name='Performance',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('performance_date', models.DateField(blank=True, null=True)),
                ('performance_location', models.CharField(max_length=255)),
                ('performance_latitude', models.FloatField()),
                ('performance_longitude', models.FloatField()),
                ('work', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='scores.Work')),
            ],
        ),
    ]