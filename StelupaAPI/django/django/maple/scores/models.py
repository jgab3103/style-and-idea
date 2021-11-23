from django.db import models
from musicians.models import Musician


class Collection(models.Model):
    title = models.CharField(max_length=255)
    title_in_original_language = models.CharField(max_length=255, default = "Not available")
    collection_notes = models.TextField(default = "Not available")
    verified = models.BooleanField(default = False)

    def __str__(self):
        return self.title


class Work(models.Model):
    collection = models.ForeignKey(Collection, on_delete=models.CASCADE, blank=True, null=True)
    order_in_collection = models.CharField(max_length = 255, default = "Not applicable")
    title = models.CharField(max_length=255)
    title_in_original_language = models.CharField(max_length = 255, default = "Not available")
    identifying_code = models.CharField(max_length = 255, default = "Not available")
    created_by = models.ForeignKey(Musician, related_name = "created_by", on_delete=models.CASCADE, null = True)
    publication_date_is_approximate = models.BooleanField(default = True)
    composed_start_date_is_approximate = models.BooleanField(default = True)
    composed_end_date_is_approximate = models.BooleanField(default = True)
    publication_date = models.DateField(null=True, blank=True)
    composed_start_date = models.DateField(null=True, blank=True)
    composed_end_date = models.DateField(null=True, blank=True)
    creation_location = models.CharField(max_length = 255, default = "Not available")
    creation_location_latitude = models.FloatField(null=True, blank=True)
    creation_location_longitude = models.FloatField(null = True, blank = True)
    genre = models.CharField(max_length=255, default = "Not available")
    notes = models.TextField(default = "Not available")
    tonality = models.CharField(max_length = 255, default = "Not available")
    instrumentation_summary = models.CharField(max_length = 255, default = "Not available")
    type_of_work = models.CharField(max_length = 255, default = "Not available")
    tempo_remains_constant = models.BooleanField(default = False)
    score_available = models.BooleanField(default = False)
    verified = models.BooleanField(default = False)
    def __str__(self):
        return self.title

class Performance(models.Model):
    work = models.ForeignKey(Work, on_delete=models.CASCADE, blank=True, null=True)
    performance_date = models.DateField(null=True, blank=True)
    performance_date_is_approximate = models.BooleanField(default = False)
    performance_location = models.CharField(max_length = 255, default = "Not available")
    performance_latitude = models.FloatField(null = True, blank = True)
    performance_longitude = models.FloatField(null = True, blank = True)
    is_premiere_performance = models.BooleanField(default = False)
    notes = models.TextField(default = "Not available")
    verified = models.BooleanField(default = False)


class Instrument(models.Model):
    name = models.CharField(max_length=255)
    family = models.CharField(max_length=255, default = "Not available")
    patch = models.CharField(max_length=255, null=True)
    is_grouping = models.BooleanField(default = False)
    verified = models.BooleanField(default = False)
    lowest_midi_pitch = models.CharField(default = "XX", max_length = 5)
    highest_midi_pitch = models.CharField(default = "XX", max_length = 5)
    is_pitched_instrument = models.BooleanField(default = True)

    def __str__(self):
        return self.name


class Note(models.Model):
    work = models.ForeignKey(Work, on_delete=models.CASCADE, blank=True, null=True)
    instrument = models.ForeignKey(Instrument, on_delete=models.CASCADE, blank=True, null=True)
    has_instrumentation = models.BooleanField(default = True)
    divisions = models.IntegerField()
    time_signature_numerator = models.IntegerField(null = True, blank = True)
    time_signature_denominator = models.IntegerField(null = True, blank = True)
    current_measure = models.IntegerField()
    midi_number = models.IntegerField()
    note_name = models.CharField(max_length = 50, default = "Not available")
    duration = models.IntegerField()
    is_rest = models.BooleanField(default = False)
    is_grace_note = models.BooleanField(default = False)
    starting_location = models.IntegerField()
    starting_location_of_current_measure = models.IntegerField()
    quarter_beats_per_minute = models.IntegerField(null = True, blank = True)
    tie_status = models.CharField(max_length = 50, default = "Not applicable")
    verified = models.BooleanField(default = True)

    def __str__(self):

        return str(self.midi_number) + ", " + str(self.duration)


class Text(models.Model):
    note = models.ForeignKey(Note, on_delete=models.CASCADE, blank=True, null=True)
    language = models.CharField(max_length=255, default = "Not available")
    content = models.CharField(max_length = 255, default = "Not available")
    verified = models.BooleanField(default = False)


class Recording(models.Model):
    work = models.ForeignKey(Work, on_delete=models.CASCADE, blank=True, null=True)
    verified = models.BooleanField(default = False)
    download_location = models.CharField(max_length = 50, default = "Not available")
    notes = models.TextField(default = "Not available")
