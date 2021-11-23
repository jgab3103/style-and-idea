from django.db import models

class Feedback(models.Model):
    your_name = models.CharField(max_length=255)
    your_feedback = models.TextField()

    def __str__(self):
        return self.your_name
