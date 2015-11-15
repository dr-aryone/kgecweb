# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.core.validators


class Migration(migrations.Migration):

    dependencies = [
        ('hostels', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='hostel',
            name='HostelEmail',
            field=models.EmailField(default=10, max_length=254),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='hostel',
            name='HostelPhoneNo',
            field=models.CharField(blank=True, max_length=13, validators=[django.core.validators.RegexValidator(regex=b'^\\+?1?\\d{10,13}$', message=b"Phone number must be entered in the format: '+999999999'. Up to 13 digits allowed.")]),
        ),
    ]
