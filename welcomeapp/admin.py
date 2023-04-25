from django.contrib import admin

# Register your models here.
# Register your models here.
from . import models


# class StudentAdmin(admin.ModelAdmin):
#     # Let you to search with title name, release year and length of duration of movie
#     search_fields = ['name']
#     # There will be a filter on release year
#     # list_filter = ['usn']
#     list_display =['usn', 'name', 'branch']
#     # editable_list = ['name']

class ans(admin.ModelAdmin):
    search_fields = ['answer']
    list_filter = ['answer']
    list_display=['fid','answer']

class farmer(admin.ModelAdmin):
    list_display=['name','email']

class schemes(admin.ModelAdmin):
    list_display=['title']
    list_filter=['title']

class benifits(admin.ModelAdmin):
    list_display=['stitle','scheme']

class ques(admin.ModelAdmin):
    list_display=['fid','question']


admin.site.register(models.Farmer,farmer)
admin.site.register(models.Questions,ques)
admin.site.register(models.Benifits,benifits)

admin.site.register(models.Answers,ans)
admin.site.register(models.Schemes,schemes)