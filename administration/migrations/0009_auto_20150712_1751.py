# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0008_auto_20150712_1744'),
    ]

    operations = [
        migrations.AlterField(
            model_name='admission_record',
            name='Admission_year',
            field=models.DateField(auto_now_add=True),
        ),
    ]
