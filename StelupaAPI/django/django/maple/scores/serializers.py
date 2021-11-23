from rest_framework import serializers
from django.contrib.auth.models import User
from . import models


class CollectionSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Collection
        fields = (
            'id',
            'title',
            'title_in_original_language',
            'collection_notes'
        )


class WorkSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Work
        fields = (
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


class PerformanceSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Performance
        fields = (
            'id',
            'work',
            'performance_date',
            'performance_date_is_approximate',
            'performance_location',
            'performance_latitude',
            'performance_longitude',
            'is_premiere_performance',
            'notes',
        )


class InstrumentSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Instrument
        fields = (
            'id',
            'name',
            'family',
            'patch',
            'is_grouping',
        )


class NoteSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Note
        fields = (
            'id',
            'work',
            'instrument',
            'has_instrumentation',
            'divisions',
            'time_signature_numerator',
            'time_signature_denominator',
            'current_measure',
            'midi_number',
            'note_name',
            'duration',
            'is_rest',
            'is_grace_note',
            'starting_location',
            'starting_location_of_current_measure',
            'quarter_beats_per_minute',
            'tie_status',
            'verified',

        )


class TextSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Text
        fields = (
            'id',
            'note',
            'language',
            'content',
        )
