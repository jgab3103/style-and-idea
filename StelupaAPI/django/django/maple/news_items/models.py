from django.db import models
from datetime import datetime
from django.contrib.auth.models import User

class NewsItem(models.Model):
    date_added = models.DateTimeField(auto_now = True)
    news_text = models.TextField()
    is_displayed = models.BooleanField(default=True)
    user = models.ForeignKey(User, related_name="news_item_user", on_delete=models.CASCADE,
                              null=True)

    def __str__(self):
        return str(self.date_added)
