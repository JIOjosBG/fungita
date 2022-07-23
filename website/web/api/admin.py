from django.contrib import admin
from .models import Measurement

class MeasurementAdmin(admin.ModelAdmin):
    pass

admin.site.register(Measurement, MeasurementAdmin)