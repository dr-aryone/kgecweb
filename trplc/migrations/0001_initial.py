# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='PlacementRecord',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('PrYear', models.IntegerField(default=2015, max_length=4, choices=[(2000, 2000), (2001, 2001), (2002, 2002), (2003, 2003), (2004, 2004), (2005, 2005), (2006, 2006), (2007, 2007), (2008, 2008), (2009, 2009), (2010, 2010), (2011, 2011), (2012, 2012), (2013, 2013), (2014, 2014), (2015, 2015)])),
                ('PlacedStudent', models.IntegerField()),
                ('MaxSalary', models.DecimalField(max_digits=4, decimal_places=2)),
            ],
        ),
        migrations.CreateModel(
            name='TiedCompany',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('CompanyName', models.CharField(max_length=100)),
                ('CompanyLogo', models.ImageField(height_field=100, width_field=100, upload_to=b'tlpc/companylogo')),
                ('CompanyUrl', models.URLField()),
                ('AssociatedFrom', models.DateField()),
            ],
        ),
        migrations.CreateModel(
            name='Tpo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('TpoName', models.CharField(max_length=100)),
                ('TpoEmailId', models.EmailField(max_length=254)),
                ('TopPhone1', models.CharField(max_length=10)),
                ('TopPhone2', models.CharField(max_length=10)),
                ('TpoImage', models.ImageField(height_field=100, width_field=100, upload_to=b'tlpc')),
                ('TpotDesk', models.TextField()),
            ],
        ),
        migrations.AddField(
            model_name='placementrecord',
            name='PrCompany',
            field=models.ForeignKey(to='trplc.TiedCompany'),
        ),
    ]
