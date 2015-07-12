# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('dept', '0002_auto_20150513_2355'),
    ]

    operations = [
        migrations.AddField(
            model_name='faculty',
            name='FacultyContact',
            field=models.CharField(default=b'9999999999', max_length=10),
        ),
        migrations.AddField(
            model_name='faculty',
            name='FacultyEmail',
            field=models.EmailField(default=datetime.datetime(2015, 5, 18, 3, 15, 33, 386488, tzinfo=utc), max_length=254),
            preserve_default=False,
        ),
    ]
