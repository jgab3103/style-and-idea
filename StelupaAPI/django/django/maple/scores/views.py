from django.shortcuts import render
from rest_framework import viewsets
from . import serializers
from . import models
from django_filters.rest_framework import DjangoFilterBackend

class CollectionViewSet(viewsets.ModelViewSet):
    queryset = models.Collection.objects.all()
    serializer_class = serializers.CollectionSerializer



class WorkViewSet(viewsets.ModelViewSet):
    queryset = models.Work.objects.all()
    serializer_class = serializers.WorkSerializer
    filter_backends = (DjangoFilterBackend,)
    filter_fields = (
            'id',
            'collection',
            'order_in_collection',
            'title',
            'title_in_original_language',
            'identifying_code',
            'created_by',
            'publication_date_is_approximate',
            'composed_start_date_is_approximate',
            'composed_end_date_is_approximate',
            'publication_date',
            'composed_start_date',
            'composed_end_date',
            'creation_location',
            'creation_location_latitude',
            'creation_location_longitude',
            'genre',
            'notes',
            'tonality',
            'instrumentation_summary',
            'type_of_work',
            'tempo_remains_constant',
            'score_available',
    )

class PerformanceViewSet(viewsets.ModelViewSet):
    queryset = models.Performance.objects.all()
    serializer_class = serializers.PerformanceSerializer


class InstrumentViewSet(viewsets.ModelViewSet):
    queryset = models.Instrument.objects.all()
    serializer_class = serializers.InstrumentSerializer


class NoteViewSet(viewsets.ModelViewSet):
    queryset = models.Note.objects.all()
    serializer_class = serializers.NoteSerializer
    filter_backends = (DjangoFilterBackend,)
    filter_fields = {
            'work': ['exact',],
            'current_measure': ['gte', 'lte']
    }


class TextViewSet(viewsets.ModelViewSet):
    queryset = models.Text.objects.all()
    serializer_class = serializers.TextSerializer
