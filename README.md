## HackNSU-2020

HackNSU 2.0 Project


How to run the Server:

Download: https://www.vagrantup.com/
Download: https://www.virtualbox.org/


Open bash in the root directory and run the following commands in the following pattern

vagrant up 

vagrant ssh

cd /vagrant/

python -m venv ~/env

source ~/env/bin/activate

pip install -r requirements.txt

python manage.py makemigrations procurebd_api (only if it prompts to make a migration)

python manage.py migrate (only if it prompts to make a migration)

python manage.py createsuperuser (follow the instructions)

python manage.py runserver 0.0.0.0:8000


[ Open a browser ]

Follow the link: http://127.0.0.1:5060/admin/

Login using your very own super user account or use 

username: Farishta
password: jhalmuri


API: EndPoints 

http://127.0.0.1:5060/views/profileuser_list
http://127.0.0.1:5060/views/vendor_list
http://127.0.0.1:5060/views/order_list
http://127.0.0.1:5060/views/item_list

u get the idea


## How to run the app: 

Download Flutter SDK

Download an Emulator

Download Dependencies 

https://flutter.dev/docs