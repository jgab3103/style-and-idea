from django.db import models

class Musician(models.Model):
    first_name = models.CharField(max_length=255)
    family_name = models.CharField(max_length=255)
    birth_date = models.DateField(auto_now_add=False, null = True, blank = True)
    death_date = models.DateField(auto_now=False, null = True, blank = True)
    birth_nationality = models.CharField(max_length=255, default = "Not available")
    death_nationality = models.CharField(max_length=255, default = "Not available")
    musician_type = models.CharField(max_length=255, default = "Not available")
    primary_instrument = models.CharField(max_length=255, default = "Not available")
    birth_location = models.CharField(max_length=255, default = "Not available")
    birth_location_latitude = models.CharField(max_length=255, default = "Not available")
    birth_location_longitude = models.CharField(max_length=255, default = "Not available")
    death_location = models.CharField(max_length=255, default = "Not available")
    death_location_latitude = models.CharField(max_length=255, default = "Not available")
    death_location_longitude = models.CharField(max_length=255, default = "Not available")
    country_of_predominant_residency = models.CharField(max_length=255, default = "Not available")
    verified = models.BooleanField(default = False)

    def __str__(self):
        return(self.first_name + " " + self.family_name)

class Period(models.Model):
    musician = models.ForeignKey(Musician, on_delete=models.CASCADE)
    start_date = models.DateField(auto_now=False, null = True, blank = True)
    end_date = models.DateField(auto_now=False, null = True, blank = True)
    period_type = models.CharField(max_length=255, default = "Not available")
    period_description = models.TextField(default = "Not available")
    location = models.CharField(max_length = 255, default = "Not available")
    location_based_in_latitude = models.CharField(max_length=255, default = "Not available")
    location_based_in_longitude = models.CharField(max_length=255, default = "Not available")
    verified = models.BooleanField(default = False)
