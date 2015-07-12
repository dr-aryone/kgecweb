# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administration', '0003_auto_20150509_1634'),
    ]

    operations = [
        migrations.CreateModel(
            name='Institution',
            fields=[
                ('InstName', models.CharField(max_length=50, serialize=False, primary_key=True)),
                ('InstLogo', models.ImageField(upload_to=b'Institute/Image/')),
                ('InstDescrip', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='InstScrollImage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('ImageDes', models.CharField(max_length=30)),
                ('ImageScroll', models.ImageField(upload_to=b'Institute/ScrollImage/')),
            ],
        ),
        migrations.AddField(
            model_name='institution',
            name='InstImages',
            field=models.ForeignKey(to='administration.InstScrollImage'),
        ),
        migrations.AddField(
            model_name='institution',
            name='InstOwner',
            field=models.ForeignKey(to='administration.AdminProf'),
        ),
    ]
