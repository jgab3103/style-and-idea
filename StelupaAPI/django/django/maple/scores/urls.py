from django.urls import path
from rest_framework import routers
from . import views
from django.conf.urls import url, include

app_name = "scores"

router = routers.DefaultRouter()
router.register('collections', views.CollectionViewSet)
router.register('works', views.WorkViewSet)
router.register('performances', views.PerformanceViewSet)
router.register('instruments', views.InstrumentViewSet)
router.register('notes', views.NoteViewSet)
router.register('texts', views.TextViewSet)


urlpatterns = [
    path("/v1/", include(router.urls)),
]
