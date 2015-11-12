# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0017_instscrollimage_imagecomment'),
    ]

    operations = [
        migrations.AddField(
            model_name='admission',
            name='Admission_Exam',
            field=models.CharField(default=b'WBJEE', max_length=40),
        ),
        migrations.AddField(
            model_name='admission',
            name='Admission_intake',
            field=models.CharField(default=b'60', max_length=40),
        ),
    ]
