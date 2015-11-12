# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import stdimage.models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='NewPage',
            fields=[
                ('Page_Url', models.CharField(max_length=10, serialize=False, primary_key=True)),
                ('Page_Name', models.CharField(max_length=100)),
                ('Page_Creation_Date', models.DateField()),
                ('Page_Content', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='NewPageFiles',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('Image_Name', models.CharField(max_length=50)),
                ('Page_Image', stdimage.models.StdImageField(upload_to=b'page_image')),
                ('Page_Url', models.ForeignKey(to='page.NewPage')),
            ],
        ),
    ]
