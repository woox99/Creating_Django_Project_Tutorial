# PowerShell script
# Execute this script from django directory

# This will create a table in your SQLite db with the name of the class in your app -> models.py
# Mirgration must be done EVERY time model is changed (change directory name)

projectenv/Scripts/activate
cd 'projectname'
python manage.py makemigrations
python manage.py migrate



