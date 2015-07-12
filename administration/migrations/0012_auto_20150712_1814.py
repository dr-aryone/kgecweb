# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0011_remove_admission_record_admission_year'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='admission',
            name='Admission_histoy',
        ),
        migrations.DeleteModel(
            name='Admission_Record',
        ),
    ]
