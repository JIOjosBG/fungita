# Generated by Django 4.0.3 on 2022-07-18 09:13

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_alter_measurement_time'),
    ]

    operations = [
        migrations.AlterField(
            model_name='measurement',
            name='time',
            field=models.DateTimeField(default=datetime.datetime(2022, 7, 18, 9, 13, 54, 72483, tzinfo=utc)),
        ),
    ]
