# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0013_notice_noticecontent'),
    ]

    operations = [
        migrations.AlterField(
            model_name='notice',
            name='NoticeFile',
            field=models.FileField(default=b'NA', upload_to=b'notice/%Y/%m/%d'),
        ),
    ]
