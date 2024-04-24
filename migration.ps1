# PowerShell script
# Execute this script on the same level as manage.py

# This will create a table in your SQLite db with the name of the class in your app -> models.py
# Mirgration must be done EVERY time model is changed (change directory name)
# Activate the virtual environment (change name of projectname)
projectenv/Scripts/activate
python manage.py makemigrations
python manage.py migrate



