# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import stdimage.models


class Migration(migrations.Migration):

    dependencies = [
        ('trplc', '0003_auto_20150513_0056'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tiedcompany',
            name='CompanyLogo',
            field=stdimage.models.StdImageField(upload_to=b'tlpc/companylogo'),
        ),
        migrations.AlterField(
            model_name='tpo',
            name='TpoImage',
            field=stdimage.models.StdImageField(upload_to=b'tlpc'),
        ),
    ]
