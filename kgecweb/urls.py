from django.conf.urls import include, url
from django.contrib import admin
from student.views  import ListStudentView ,CreateStudentView
from django.conf.urls.static import static
from django.conf import settings
from dept.views import dept ,faculty
from administration.views import InstituteDetails ,NoticeDetails, NoticeSingle, AdminProfile , AdmissionDtl
from trplc.views import TraingPlacement ,TraingPlacementRecord
from contact.views import Contact


urlpatterns = [
    url(r'^$',InstituteDetails),
    # Examples:
    # url(r'^$', 'kgecweb.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^notice/$',NoticeDetails),
    url(r'^notice/(?P<id>\d+)/$',NoticeSingle),
    url(r'^faculty/(?P<id>\d+)/$',faculty),
    url(r'^trgplc/$',TraingPlacement),
    url(r'^trgplc/record/$',TraingPlacementRecord),
	url(r'^department/(?P<dept>\w+)/$',dept),
    url(r'^administration/(?P<prof>\w+)/$',AdminProfile),
    url(r'^admission/(?P<typ>\w+)/$',AdmissionDtl),
    url(r'^admin/', include(admin.site.urls)),
    #url(r'^student/', student.view),
    url(r'^student/list/$', ListStudentView.as_view(),name='student_list',),
    url(r'^student/create/$', CreateStudentView.as_view(),name='student_add',),
    url(r'^contact/$', Contact,name='contact'),


] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)