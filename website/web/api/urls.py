from django.urls import path, re_path
from . import views
urlpatterns = [
    path('',views.apiOverview,name="api overview"),
    path('list/',views.getMeasurements,name="get measuremtn"),
    path('latests/',views.getLatestMeasurements,name="get latests measuremtn"),

    path('add/',views.addMeasurement,name="add measurement"),
    path('charts/',views.charts,name="charts"),
]