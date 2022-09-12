from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response 
from .serializers import MeasurementSerializer
from .models import Measurement
from datetime import timedelta
from django.utils import timezone

@api_view(['GET'])
def apiOverview(request):
    api_urls = {
        'all_measurements':{
        'List': '/list/',
        'Add': '/add/',
        },

    }
    return Response(api_urls)

@api_view(['GET'])
def getMeasurements(request):
    measurements = Measurement.objects.all()
    serializer = MeasurementSerializer(measurements,many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getLatestMeasurements(request):
    twenty_days_ago = timezone.now().date() - timedelta(days=20)

    measurements = Measurement.objects.filter(time__gte=twenty_days_ago)
    serializer = MeasurementSerializer(measurements,many=True)
    return Response(serializer.data)


@api_view(['POST'])
def addMeasurement(request):
    serializer = MeasurementSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)


def charts(request):
    template_name = 'api/charts.html'
    return render(request, template_name, {})