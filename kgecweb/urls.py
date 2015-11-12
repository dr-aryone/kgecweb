from django.conf import settings
from django.conf.urls import include, url
from django.conf.urls.static import static
from django.contrib import admin
from django.conf.urls.static import static
from administration.views import InstituteDetails ,NoticeDetails, NoticeSingle, AdminProfile , AdmissionDtl
from student.views  import ListStudentView ,CreateStudentView
from dept.views import dept ,faculty
from trplc.views import TraingPlacement ,TraingPlacementRecord
from contact.views import Contact
from page.views import new_page


urlpatterns = [
    url(r'^$',InstituteDetails),
    # Examples:
    # url(r'^$', 'kgecweb.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^notice/$','administration.views.NoticeDetails', name='notice_all'),
    url(r'^notice/(?P<id>\d+)/$','administration.views.NoticeSingle', name='notice_single'),
    url(r'^faculty/(?P<id>\d+)/$','dept.views.faculty', name='faculty_details'),
    url(r'^trgplc/$','trplc.views.TraingPlacement', name='trplc'),
    url(r'^trgplc/record/$','trplc.views.TraingPlacementRecord', name='trplc_record'),
	url(r'^department/(?P<dept>\w+)/$','dept.views.dept', name='department'),
    url(r'^administration/(?P<prof>\w+)/$','administration.views.AdminProfile', name='admin_profile'),
    url(r'^admission/(?P<typ>\w+)/$','administration.views.AdmissionDtl',name='admission_dtls'),
    url(r'^admin/', include(admin.site.urls)),
    #url(r'^student/', student.view),
    url(r'^student/list/$', ListStudentView.as_view(),name='student_list',),
    url(r'^student/create/$', CreateStudentView.as_view(),name='student_add',),
    url(r'^contact/$', Contact,name='contact'),

    url(r'^page/(?P<page_url>\w+)/$','page.views.new_page', name='new_page'),


] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)