# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0002_adminprof'),
    ]

    operations = [
        migrations.AlterField(
            model_name='adminprof',
            name='AdminImage',
            field=models.ImageField(upload_to=b'AdminProf/Image/'),
        ),
    ]
