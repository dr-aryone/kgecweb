# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import stdimage.models


class Migration(migrations.Migration):

    dependencies = [
        ('dept', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='department',
            name='DeptImage',
            field=stdimage.models.StdImageField(upload_to=b'dept_img'),
        ),
        migrations.AlterField(
            model_name='faculty',
            name='FacultyImage',
            field=stdimage.models.StdImageField(upload_to=b'faculty_img'),
        ),
        migrations.AlterField(
            model_name='staff',
            name='StaffImage',
            field=stdimage.models.StdImageField(upload_to=b'faculty_img'),
        ),
    ]
