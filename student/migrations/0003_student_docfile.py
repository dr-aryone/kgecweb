# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0002_auto_20150430_1444'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='docfile',
            field=models.FileField(default=datetime.datetime(2015, 4, 30, 12, 26, 50, 854744, tzinfo=utc), upload_to=b'documents/%Y/%m/%d'),
            preserve_default=False,
        ),
    ]
