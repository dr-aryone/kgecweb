# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
import django.core.validators
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0005_auto_20150513_2355'),
    ]

    operations = [
        migrations.AddField(
            model_name='adminprof',
            name='AdminEmailId',
            field=models.EmailField(default=datetime.datetime(2015, 5, 27, 14, 23, 49, 350047, tzinfo=utc), max_length=254),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='adminprof',
            name='AdminPhoneNo',
            field=models.CharField(blank=True, max_length=13, validators=[django.core.validators.RegexValidator(regex=b'^\\+?1?\\d{10,13}$', message=b"Phone number must be entered in the format: '+999999999'. Up to 13 digits allowed.")]),
        ),
        migrations.AlterField(
            model_name='adminprof',
            name='AdminType',
            field=models.CharField(max_length=20, serialize=False, primary_key=True, choices=[(b'PRINCIPAL', b'Principal'), (b'REGISTRAR', b'Registrar'), (b'DYREGISTRAR', b'DyRegistrar'), (b'ACCOUNTOFFICER', b'AccountOfficer'), (b'STUDENTSECTION', b'StudentSection'), (b'WEBADMIN', b'WebAdmin'), (b'EXAMDEPT', b'ExamDept')]),
        ),
        migrations.AlterField(
            model_name='notice',
            name='NoticeStartDate',
            field=models.DateField(auto_now_add=True),
        ),
        migrations.AlterField(
            model_name='notice',
            name='NoticeType',
            field=models.CharField(default=b'NOTICE', max_length=20, choices=[(b'ACADEMIC', b'Academic'), (b'PLACEMENT', b'Placement'), (b'TRAINING', b'Training'), (b'TENDER', b'Tender'), (b'RESULT', b'Result'), (b'REGISTRAR', b'RegistrarOffice'), (b'PRINCIPAL', b'PrincipalOffice'), (b'ACCOUNTS', b'Accounts'), (b'EXAMINATION', b'Examination'), (b'NOTICE', b'Notice')]),
        ),
    ]
