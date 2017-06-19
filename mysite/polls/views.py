from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import Question

#def index(request):
#    b={
#    'git'       :'http://192.168.100.165',
#    'jenkins'   :'http://192.168.100.46:8080/',
#    'testlink'  :'http://192.168.100.49/',
#    'redmine'   :'http://192.168.100.49/',
#    }
#    a=str('\n'.join(str(b).split(',')))
#    return HttpResponse(a)

def detail(request,question_id):
    return HttpResponse("U are looking at question  %s " % question_id)

def results(requse,question_id):
    response = "You're looking at the results of question %s."
    return HttpResponse(response % question_id)

def vote(request,question_id):
    return HttpResponse("You're voting on question %s." % question_id)

def index(request):
    latest_question_list = Question.objects.order_by('-pub_date')[:5]
    #output = ', '.join([q.question_text for q in latest_question_list])
    template= loader.get_template('polls/index.html')
    context={
        'latest_question_list':latest_question_list,
    }
    return HttpResponse(template.render(context, request))

# Create your views here.
