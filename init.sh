# settings for nginx
sudo rm -r /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo service nginx stop
sudo nginx -c /etc/nginx/sites-enabled/test.conf
#sudo /etc/init.d/nginx restart

# settings for gunicorn
# sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/hello.py
cd /home/box/web
sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:application
cd ask
sudo gunicorn -c /home/box/web/etc/gunicorn_ask.py ask.wsgi:application

# settings for mysql
#sudo /etc/init.d/mysql start
