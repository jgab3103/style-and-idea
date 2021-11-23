from django.urls import path
from rest_framework import routers
from . import views
from django.conf.urls import url, include

app_name = "musicians"

router = routers.DefaultRouter()
router.register('musicians', views.MusicianViewSet)
router.register('periods', views.PeriodViewSet)



urlpatterns = [
    path("/v1/", include(router.urls)),
]
