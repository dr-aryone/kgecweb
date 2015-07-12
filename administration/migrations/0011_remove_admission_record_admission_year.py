# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0010_auto_20150712_1756'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='admission_record',
            name='Admission_year',
        ),
    ]
