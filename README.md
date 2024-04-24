# Creating Django Application Tutorial

### Step 1: Create Your Project Folder
### Step 2: Create and Activate Virtual Environment
Inside of your empty project folder run:
```
python -m venv projectenv
```
```
projectenv\Scripts\activate
```
### Step 3: Install Django
```
pip install django
```
### Step 4: Create New Django Project
Replace ``'projectname'`` with the name of your project
```
django-admin startproject 'projectname'
```
cd into your project directory
```
cd 'projectname'
```

### Step 5: Create a Django App
This will create a new app with the name ``app``
```
python manage.py startapp app
```

### Step 6: Configure ``settings.py``
In the ``settings.py`` file in your ``projectname`` directory add this line:
```python
INSTALLED_APPS = [
    "app", # Add app name here
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
]
```

### Step 7: Configure ``urls.py``
Open the ``urls.py`` file and replace the code with:
```python
from django.urls import path, include

urlpatterns = [
    path("", include('app.urls')), 
]
```

### Step 6: Configure ``app``
Create a file in the ``app`` directory named ``urls.py`` and paste this code in it:
```python
from django.urls import path     
from . import views

urlpatterns = [
    path('', views.index),	   
]
```
Open the ``views.py`` file in the ``app`` directory and replace the code with:
```python
from django.shortcuts import render, redirect

def index(request):
    return render(request, 'index.html')
```

### Step 7: Create ``templates`` Directory
* Create a folder named ``templates`` on the first level of your ``app`` directory.

* Create a file named ``index.html`` inside of templates and paste this code in it:
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    {% load static %}
    <link rel="stylesheet" href="{% static 'css/global.css' %}">
</head>
<body>
    <p>Your application is working..</p>
    <p class="css" style="display: none;">Your CSS is working..</p>
    <p class="js"></p>
    <script src="{% static 'js/global.js' %}"></script>
</body>
</html>
```

### Step 8: Create ``static`` Directory
* Create a folder named ``static`` on the first level of your ``app`` directory.
* Create two folders named ``css`` and ``js`` on the first level of your ``static`` directory.
* Create a file named ``global.css`` inside the ``css`` directory and paste the code in it:
```css
.css{
    display: block !important;
}
```
* Create a file named ``global.js`` inside the ``js`` directory and paste the code in it:
```js
const jsElement = document.querySelector('.js');
jsElement.innerHTML = 'Your JavaScript is working..';
```

### Step 9: Run Your Application
Run your server by running the following command in the same directory as your project's ``manage.py`` file:
```
python manage.py runserver
```
Navigate to ``http://localhost:8000/`` in your browser to view your application.