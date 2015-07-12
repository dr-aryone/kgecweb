from django.contrib import admin

# Register your models here.
from trplc.models import  Tpo , TiedCompany ,PlacementRecord

class TpoAdmin(admin.ModelAdmin):
    list_display = ('id','TpoName','TpoEmailId', 'TopPhone1', 'TopPhone2','TpoImage','TpotDesk')
admin.site.register(Tpo, TpoAdmin)


class TiedCompanyAdmin(admin.ModelAdmin):
    list_display = ('id','CompanyName','CompanyLogo', 'CompanyUrl','AssociatedFrom')
admin.site.register(TiedCompany, TiedCompanyAdmin)



class PlacementRecordAdmin(admin.ModelAdmin):
    list_display = ('id','PrYear','PrCompany', 'PlacedStudent','MaxSalary')
admin.site.register(PlacementRecord, PlacementRecordAdmin)
