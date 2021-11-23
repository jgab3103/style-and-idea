from django.urls import path
from . import views
from django.conf.urls import url, include

app_name = "feedback"


urlpatterns = [
    path("feedback", views.feedback_form),
    path("thanks",views.thanks)
]
