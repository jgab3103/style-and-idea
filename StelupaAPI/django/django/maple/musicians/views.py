from django.shortcuts import render
from rest_framework import viewsets
from . import serializers
from . import models

class MusicianViewSet(viewsets.ModelViewSet):
    queryset = models.Musician.objects.all()
    serializer_class = serializers.MusicianSerializer

class PeriodViewSet(viewsets.ModelViewSet):
    queryset = models.Period.objects.all()
    serializer_class = serializers.PeriodSerializer