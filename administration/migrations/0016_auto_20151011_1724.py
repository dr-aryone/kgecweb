# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
import stdimage.models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0015_auto_20151003_0149'),
    ]

    operations = [
        migrations.AddField(
            model_name='institution',
            name='InstStartDate',
            field=models.DateField(default=datetime.datetime(2015, 10, 11, 11, 54, 26, 510475, tzinfo=utc)),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='institution',
            name='InstImages',
            field=stdimage.models.StdImageField(upload_to=b'Institute/InstImage/'),
        ),
        migrations.AlterField(
            model_name='instscrollimage',
            name='ImageDes',
            field=models.CharField(max_length=100),
        ),
    ]
