# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0007_auto_20150531_1914'),
    ]

    operations = [
        migrations.CreateModel(
            name='Admission',
            fields=[
                ('Admission_Type', models.CharField(max_length=20, serialize=False, primary_key=True)),
                ('Admission_Details', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Admission_Record',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('Admission_year', models.DateField()),
                ('Start_Rank', models.CharField(max_length=100)),
                ('End_Rank', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='admission',
            name='Admission_histoy',
            field=models.ManyToManyField(to='administration.Admission_Record'),
        ),
    ]
