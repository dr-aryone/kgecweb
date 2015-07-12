# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import stdimage.models


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0006_auto_20150527_1953'),
    ]

    operations = [
        migrations.CreateModel(
            name='Special_Events',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('Events_Name', models.CharField(max_length=30)),
                ('Events_Descriptions', models.TextField()),
                ('Events_Date', models.DateField(auto_now_add=True)),
                ('Event_Image', stdimage.models.StdImageField(upload_to=b'notice/special_events/')),
            ],
        ),
        migrations.AlterField(
            model_name='notice',
            name='NoticeType',
            field=models.CharField(default=b'NOTICE', max_length=20, choices=[(b'NOTICE', b'Notice'), (b'ACADEMIC', b'Academic'), (b'PLACEMENT', b'Placement'), (b'TRAINING', b'Training'), (b'TENDER', b'Tender'), (b'RESULT', b'Result'), (b'REGISTRAR', b'RegistrarOffice'), (b'PRINCIPAL', b'PrincipalOffice'), (b'ACCOUNTS', b'Accounts'), (b'EXAMINATION', b'Examination')]),
        ),
    ]
