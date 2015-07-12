# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import stdimage.models


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0004_auto_20150509_1725'),
    ]

    operations = [
        migrations.AlterField(
            model_name='adminprof',
            name='AdminImage',
            field=stdimage.models.StdImageField(upload_to=b'AdminProf/Image/'),
        ),
        migrations.AlterField(
            model_name='institution',
            name='InstLogo',
            field=stdimage.models.StdImageField(upload_to=b'Institute/Image/'),
        ),
        migrations.AlterField(
            model_name='instscrollimage',
            name='ImageScroll',
            field=stdimage.models.StdImageField(upload_to=b'Institute/ScrollImage/'),
        ),
    ]
