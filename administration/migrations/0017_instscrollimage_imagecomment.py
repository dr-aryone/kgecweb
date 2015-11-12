# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0016_auto_20151011_1724'),
    ]

    operations = [
        migrations.AddField(
            model_name='instscrollimage',
            name='ImageComment',
            field=models.CharField(default=b'KGEC', max_length=100),
        ),
    ]
