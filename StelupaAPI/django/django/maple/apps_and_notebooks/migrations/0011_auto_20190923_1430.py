# Generated by Django 2.2.5 on 2019-09-23 04:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apps_and_notebooks', '0010_delete_rlibrary'),
    ]

    operations = [
        migrations.CreateModel(
            name='AppOrNotebookTag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tag_name', models.CharField(max_length=255)),
            ],
        ),
        migrations.RemoveField(
            model_name='appornotebook',
            name='tags',
        ),
        migrations.AddField(
            model_name='appornotebook',
            name='tags',
            field=models.ManyToManyField(blank=True, to='apps_and_notebooks.AppOrNotebookTag'),
        ),
    ]
