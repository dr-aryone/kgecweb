# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0019_auto_20151111_0014'),
    ]

    operations = [
        migrations.AlterField(
            model_name='special_events',
            name='Events_Date',
            field=models.DateField(),
        ),
    ]
