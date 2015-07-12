# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import stdimage.models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Hostel',
            fields=[
                ('HostelName', models.CharField(max_length=100, serialize=False, primary_key=True)),
                ('HostelType', models.CharField(max_length=10)),
                ('HostelSeat', models.DecimalField(max_digits=3, decimal_places=2)),
                ('HostelImage', stdimage.models.StdImageField(upload_to=b'Hostels/logo/')),
                ('HostelAddress', models.CharField(max_length=200)),
            ],
        ),
    ]
