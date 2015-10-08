# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0014_auto_20151003_0124'),
    ]

    operations = [
        migrations.AlterField(
            model_name='notice',
            name='NoticeFile',
            field=models.FileField(default=b'#', upload_to=b'notice/%Y/%m/%d'),
        ),
    ]
