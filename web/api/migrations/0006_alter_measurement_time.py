# Generated by Django 4.0.3 on 2022-07-18 09:12

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0005_rename_tem_measurement_temp_alter_measurement_time'),
    ]

    operations = [
        migrations.AlterField(
            model_name='measurement',
            name='time',
            field=models.TimeField(default=datetime.datetime(2022, 7, 18, 9, 12, 23, 511966, tzinfo=utc)),
        ),
    ]