from django.shortcuts import render
from django.contrib.auth.models import User

# Create your views here.
def hello(request, a):
	print(a)
	user_list = User.objects.all()
	return render(request, 'table.html', {'user_list':user_list})

def test(request, id, key):
	print(id)
	print(key)
	return render(request, 'table.html')