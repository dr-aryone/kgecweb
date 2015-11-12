# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dept', '0003_auto_20150518_0845'),
    ]

    operations = [
        migrations.AddField(
            model_name='department',
            name='DeptIntake',
            field=models.IntegerField(default=60),
        ),
    ]
