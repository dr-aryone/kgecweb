# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='AdminProf',
            fields=[
                ('AdminType', models.CharField(max_length=5, serialize=False, primary_key=True, choices=[(b'PRI', b'Principal'), (b'REG', b'Registrar'), (b'DYREG', b'DyRegistrar'), (b'ACO', b'AccountOfficer'), (b'STC', b'StudentSection'), (b'EXO', b'ExamDept')])),
                ('AdminName', models.CharField(max_length=50)),
                ('AdminDOB', models.DateField()),
                ('AdminImage', models.ImageField(upload_to=b'')),
                ('AdminWord', models.TextField()),
            ],
        ),
    ]
