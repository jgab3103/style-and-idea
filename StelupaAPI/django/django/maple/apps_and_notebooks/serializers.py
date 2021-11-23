from rest_framework import serializers
from django.contrib.auth.models import User
from . import models

class AppOrNotebookSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.AppOrNotebook
        fields = (
        'id',
        'title',
        'description',
        'location'
        )
