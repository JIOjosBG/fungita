# Generated by Django 4.0.3 on 2022-08-15 14:14

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0009_alter_measurement_time'),
    ]

    operations = [
        migrations.AddField(
            model_name='measurement',
            name='farm',
            field=models.IntegerField(default=3),
        ),
        migrations.AlterField(
            model_name='measurement',
            name='time',
            field=models.DateTimeField(default=datetime.datetime(2022, 8, 15, 14, 13, 59, 937261, tzinfo=utc)),
        ),
    ]
