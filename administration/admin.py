from django.contrib import admin

# Register your models here.
from  administration.models import Notice ,AdminProf ,Institution, InstScrollImage , Special_Events , Admission 

class NoticeAdmin(admin.ModelAdmin):
    list_display = ('id','NoticeType','NoticeTag', 'NoticeStartDate', 'NoticeEndDate','NoticeContent','NoticeFile')
admin.site.register(Notice, NoticeAdmin)


class AdminProfAdmin(admin.ModelAdmin):
    list_display = ('AdminType','AdminName', 'AdminDOB', 'AdminImage','AdminEmailId','AdminPhoneNo')
admin.site.register(AdminProf, AdminProfAdmin)


class AdminInstitution(admin.ModelAdmin):
    list_display = ('InstName','InstLogo', 'InstDescrip', 'InstOwner','InstImages')
admin.site.register(Institution, AdminInstitution)


class AdminScrollImage(admin.ModelAdmin):
    list_display = ('id','ImageDes', 'ImageScroll','ImageComment')
admin.site.register(InstScrollImage, AdminScrollImage)

class AdminSpecialEvents(admin.ModelAdmin):
	list_display=('id','Events_Name','Events_Descriptions','Event_Image','Events_Date')
admin.site.register(Special_Events,AdminSpecialEvents)


class AdminAdmission(admin.ModelAdmin):
	list_display=('Admission_Type','Admission_Details','Admission_Exam','Admission_intake')
admin.site.register(Admission,AdminAdmission)
