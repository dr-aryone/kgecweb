# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Notice',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('NoticeType', models.CharField(default=b'NE', max_length=2, choices=[(b'AC', b'Academic'), (b'PT', b'Placement'), (b'TR', b'Training'), (b'TD', b'Tender'), (b'UP', b'Update'), (b'RE', b'Result'), (b'EX', b'Exam'), (b'NE', b'Notice')])),
                ('NoticeTag', models.CharField(max_length=30)),
                ('NoticeStartDate', models.DateField()),
                ('NoticeEndDate', models.DateField()),
                ('NoticeFile', models.FileField(upload_to=b'notice/%Y/%m/%d')),
            ],
        ),
    ]
