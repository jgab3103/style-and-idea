from django.urls import path
from . import views
from django.conf.urls import url, include

app_name = "main"



urlpatterns = [
    path('', views.index, name = 'index'),
    path('apps-and-notebooks', views.apps_and_notebooks, name = 'apps_and_notebooks'),
    path('explore', views.explore, name = 'explore'),
    path('data-api', views.data_api, name = 'data_api'),
    path('submit-musician-data', views.submit_musician_data, name = 'submit_musician_data'),
    path('submit-collection-data', views.submit_collection_data, name = 'submit_collections_data'),
    path('submit-work-data', views.submit_work_data, name = 'submit_work_data'),
    path('submit-performance-data', views.submit_performance_data, name = 'submit_performance_data'),
    path('submit-instrument-data', views.submit_instrument_data, name = 'submit_instrument_data'),
    path('submit-file', views.submit_file, name = 'submit_file'),
]
