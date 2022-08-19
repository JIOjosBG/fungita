from rest_framework import serializers

from api.models import Measurement

class MeasurementSerializer(serializers.ModelSerializer):
   class Meta:
       model = Measurement
       fields = ('hum', 'temp', 'time','farm')

