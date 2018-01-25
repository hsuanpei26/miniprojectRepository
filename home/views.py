from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
    title = '歡迎使用'
    return render(request,'home/index.html',locals())
