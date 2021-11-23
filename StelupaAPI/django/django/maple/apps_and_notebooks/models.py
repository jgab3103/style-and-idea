from django.db import models
from django.contrib.auth.models import User
from datetime import datetime



class AppOrNotebookTag(models.Model):
    tag_name = models.CharField(max_length = 255)
    def __str__(self):
        return str(self.tag_name)



class AppOrNotebook(models.Model):
    created_by = models.ForeignKey(User, related_name="app_or_notebook", on_delete=models.CASCADE,
                              null=True)
    title = models.CharField(max_length=255)
    release_date = models.DateField(default=datetime.now)
    description = models.TextField()
    location = models.CharField(max_length=255)
    version = models.FloatField()
    type = models.CharField(max_length = 50)
    tags = models.ManyToManyField(AppOrNotebookTag, blank=True)

    def __str__(self):
        return self.title
