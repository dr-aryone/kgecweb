# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import stdimage.models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Hostel',
            fields=[
                ('HostelName', models.CharField(max_length=100, serialize=False, primary_key=True)),
                ('HostelType', models.CharField(max_length=10)),
                ('HostelSeat', models.IntegerField()),
                ('HostelImage', stdimage.models.StdImageField(upload_to=b'Hostels/logo/')),
                ('HostelAddress', models.CharField(max_length=200)),
                ('HostelDescription', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='HostelBody',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('HostelbodyRole', models.CharField(max_length=100)),
                ('HostelbodyRoleYear', models.IntegerField(default=2015, choices=[(1980, 1980), (1981, 1981), (1982, 1982), (1983, 1983), (1984, 1984), (1985, 1985), (1986, 1986), (1987, 1987), (1988, 1988), (1989, 1989), (1990, 1990), (1991, 1991), (1992, 1992), (1993, 1993), (1994, 1994), (1995, 1995), (1996, 1996), (1997, 1997), (1998, 1998), (1999, 1999), (2000, 2000), (2001, 2001), (2002, 2002), (2003, 2003), (2004, 2004), (2005, 2005), (2006, 2006), (2007, 2007), (2008, 2008), (2009, 2009), (2010, 2010), (2011, 2011), (2012, 2012), (2013, 2013), (2014, 2014), (2015, 2015)])),
                ('PersonName', models.CharField(max_length=10)),
                ('PersonYear', models.CharField(default=b'NA', max_length=7, choices=[(b'1stYear', b'1stYear'), (b'2ndYear', b'2ndYear'), (b'3rdYear', b'3rdYear'), (b'4thYear', b'4thYear')])),
                ('PersonImage', stdimage.models.StdImageField(upload_to=b'Hostels/gb/')),
                ('HostelName', models.ForeignKey(to='hostels.Hostel')),
            ],
        ),
        migrations.CreateModel(
            name='HostelEvents',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('HostelEventsName', models.CharField(max_length=100)),
                ('HostelEventDescription', models.TextField()),
                ('HostelName', models.ForeignKey(to='hostels.Hostel')),
            ],
        ),
        migrations.CreateModel(
            name='HostelPictureGalary',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('PictureName', models.CharField(max_length=100)),
                ('PictureLocation', stdimage.models.StdImageField(upload_to=b'Hostels/galary/')),
                ('HostelName', models.ForeignKey(to='hostels.Hostel')),
            ],
        ),
    ]
