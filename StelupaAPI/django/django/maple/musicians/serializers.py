from rest_framework import serializers
from django.contrib.auth.models import User
from . import models


class MusicianSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Musician
        fields = (
            'id',
            'first_name',
            'family_name',
            'birth_date',
            'death_date',
            'birth_nationality',
            'death_nationality',
            'musician_type',
            'primary_instrument',
            'birth_location',
            'birth_location_latitude',
            'birth_location_longitude',
            'death_location',
            'death_location_latitude',
            'death_location_longitude',
            'country_of_predominant_residency',
            'verified',
        )




class PeriodSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Period
        fields = (
            'id',
            'musician',
            'start_date',
            'end_date',
            'period_type',
            'period_description',
            'location',
            'location_based_in_latitude',
            'location_based_in_longitude',
            'verified',
        )
