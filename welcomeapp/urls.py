from django.contrib import admin
from django.urls import include,path
from . import views

urlpatterns = [
    path('',views.welcomePage,name='welcomePage'),
    path('signinSubmit',views.loginSubmit,name='loginSubmit'),
    path('signupSubmit',views.signupSubmit,name='signupSubmit'),
]
