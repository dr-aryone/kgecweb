# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Department',
            fields=[
                ('DeptName', models.CharField(max_length=100, serialize=False, primary_key=True)),
                ('DeptFullName', models.CharField(max_length=100)),
                ('DeptStartDate', models.DateField()),
                ('DeptDescrip', models.TextField()),
                ('DeptOwner', models.CharField(max_length=100)),
                ('DeptTagLine', models.CharField(max_length=200)),
                ('DeptImage', models.ImageField(upload_to=b'dept_img')),
                
            ],
        ),
        migrations.CreateModel(
            name='Faculty',
            fields=[
                ('FaculyId', models.AutoField(serialize=False, primary_key=True)),
                ('FacultyName', models.CharField(max_length=100)),
                ('FacultyDOB', models.DateField()),
                ('FacultyImage', models.ImageField(upload_to=b'faculty_img')),
                ('FacultyBio', models.TextField()),
                ('FacultyDept', models.ForeignKey(to='dept.Department')),
            ],
        ),
        migrations.CreateModel(
            name='Staff',
            fields=[
                ('StaffId', models.AutoField(serialize=False, primary_key=True)),
                ('StaffName', models.CharField(max_length=100)),
                ('StaffDOB', models.DateField()),
                ('StaffImage', models.ImageField(upload_to=b'faculty_img')),
                ('StaffBio', models.TextField()),
                ('StaffDept', models.ForeignKey(to='dept.Department')),
            ],
        ),
    ]
