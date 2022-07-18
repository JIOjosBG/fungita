from django.db import models
from  django.utils import timezone
# Create your models here.

class Measurement(models.Model):
    hum = models.FloatField(default=-1)
    temp = models.FloatField(default=-1)
    time = models.DateTimeField(default=timezone.now())
