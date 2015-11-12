from django.contrib import admin

from page.models import NewPage , NewPageFiles



class NewPageAdmin(admin.ModelAdmin):
    list_display = ('Page_Url','Page_Name', 'Page_Creation_Date', 'Page_Content')
admin.site.register(NewPage, NewPageAdmin)


class NewPageFilesAdmin(admin.ModelAdmin):
    list_display = ('Image_Name','Page_Image', 'Page_Url')
admin.site.register(NewPageFiles, NewPageFilesAdmin)

# Register your models here.
