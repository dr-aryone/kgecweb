# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('first_name', models.CharField(max_length=255)),
                ('last_name', models.CharField(max_length=255)),
                ('date_of_birth', models.DecimalField(max_digits=5, decimal_places=2)),
                ('address', models.CharField(max_length=500)),
                ('department', models.CharField(max_length=55)),
                ('Year', models.CharField(max_length=10)),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
    ]
