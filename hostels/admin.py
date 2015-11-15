from django.contrib import admin

# Register your models here.

from  hostels.models import Hostel, HostelEvents,HostelPictureGalary,HostelBody

class HostelAdmin(admin.ModelAdmin):
    list_display = ('HostelName','HostelType','HostelSeat', 'HostelImage', 'HostelAddress','HostelDescription')
admin.site.register(Hostel, HostelAdmin)


class HostelEventsAdmin(admin.ModelAdmin):
	list_display = ('HostelEventsName','HostelEventDescription')
admin.site.register(HostelEvents, HostelEventsAdmin)


class HostelPictureGalaryAdmin(admin.ModelAdmin):
	list_display = ('PictureName','PictureLocation')
admin.site.register(HostelPictureGalary, HostelPictureGalaryAdmin)


class HostelBodyAdmin(admin.ModelAdmin):
	list_display = ('HostelbodyRole','HostelbodyRoleYear','PersonName','PersonYear','PersonImage')
admin.site.register(HostelBody, HostelBodyAdmin)