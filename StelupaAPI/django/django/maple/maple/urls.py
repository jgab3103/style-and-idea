from django.contrib import admin
from django.urls import include, path
from rest_framework_swagger.views import get_swagger_view

schema_view = get_swagger_view(title='Stelupa Data API')

admin.site.site_header = 'Stelupa Administration'
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('main.urls')),
    path('swagger/', schema_view),
    path('scores-api', include('scores.urls')),
    path('musicians-api', include('musicians.urls')),
    path('apps-and-notebooks-api', include('apps_and_notebooks.urls')),
]
