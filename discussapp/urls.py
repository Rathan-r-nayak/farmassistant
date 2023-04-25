from django.urls import path,include
from . import views

urlpatterns = [
    path('',views.discuss,name='discusspage'),
    path('ask_question',views.askQuestion,name='queryPage'),
    path('questionSubmit',views.questionSubmit,name='questionSubmit'),
    path('answerSubmit',views.answerSubmit,name='answerSubmit'),
]