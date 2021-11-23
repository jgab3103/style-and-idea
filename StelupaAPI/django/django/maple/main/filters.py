import django_filters
from django.db import models
from django import forms

from django_filters.widgets import RangeWidget
from django.views.generic.list import ListView
from musicians.models import Musician
from apps_and_notebooks.models import AppOrNotebook
from scores.models import Collection, Work, Performance, Instrument
from django.db.models import Q


class MusicianFilter(django_filters.FilterSet):
	first_name = django_filters.CharFilter(lookup_expr='icontains')
	family_name = django_filters.CharFilter(lookup_expr='icontains')
	birth_location = django_filters.CharFilter(method='filter_by_all_name_fields', label = "Birth or death location")
	birth_year_filter = django_filters.CharFilter(
		method = 'filter_by_year_gte',
        label = "Born in or after"
    )

	class Meta:
		model = Musician
		fields = []

	def filter_by_all_name_fields(self, queryset, name, value):
		return queryset.filter(
			Q(birth_location__icontains=value) | Q(death_location__icontains=value))

	def filter_by_year_gte(self, queryset, name, value):
		return queryset.filter(
	        Q(birth_date__year__gte =  value)
	    )


class AppOrNotebookFilter(django_filters.FilterSet):
	title = django_filters.CharFilter(lookup_expr='icontains')
	description = django_filters.CharFilter(lookup_expr='icontains')


	class Meta:
		model = AppOrNotebook
		fields = []

class CollectionFilter(django_filters.FilterSet):
	title = django_filters.CharFilter(lookup_expr='icontains')
	title_in_original_language = django_filters.CharFilter(lookup_expr='icontains')


	class Meta:
		model = Collection
		fields = []


class WorkFilter(django_filters.FilterSet):
	title = django_filters.CharFilter(lookup_expr='icontains')
	title_in_original_language = django_filters.CharFilter(lookup_expr='icontains')


	class Meta:
		model = Work
		fields = []



class PerformanceFilter(django_filters.FilterSet):
	performance_location = django_filters.CharFilter(lookup_expr='icontains')


	class Meta:
		model = Performance
		fields = []


class InstrumentFilter(django_filters.FilterSet):
	name = django_filters.CharFilter(lookup_expr='icontains')


	class Meta:
		model = Instrument
		fields = []
