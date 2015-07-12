# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('trplc', '0002_auto_20150513_0042'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tiedcompany',
            name='CompanyLogo',
            field=models.ImageField(upload_to=b'tlpc/companylogo'),
        ),
        migrations.AlterField(
            model_name='tpo',
            name='TpoImage',
            field=models.ImageField(upload_to=b'tlpc'),
        ),
    ]
