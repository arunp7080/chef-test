#!/usr/bin/env bash

sudo apt-get -y install python-virtualenv
sudo apt-get -f -y install
sudo apt-get -y install python-pip
sudo apt-get -y install python-virtualenv
sudo apt-get -y install libpq-dev python-dev
sudo apt-get -y install postgresql postgresql-contrib nginx
sudo virtualenv /opt/myenv
#source /opt/myenv/bin/activate
sudo pip install django
sudo pip install gunicorn
#deactivate
sudo killall nginx
sudo killall python
cd /home/vagrant/
django-admin.py startproject pythonstart
if [ $? -gt 0 ];
then
   cd pythonstart 
   python manage.py runserver [::]:8000 &
else
   cd pythonstart
   python manage.py runserver [::]:8000 &
fi



