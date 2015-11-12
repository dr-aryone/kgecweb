# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0018_auto_20151110_2336'),
    ]

    operations = [
        migrations.AlterField(
            model_name='admission',
            name='Admission_Exam',
            field=models.CharField(default=b'WBJEE', max_length=100),
        ),
        migrations.AlterField(
            model_name='admission',
            name='Admission_intake',
            field=models.CharField(default=b'60', max_length=100),
        ),
    ]
