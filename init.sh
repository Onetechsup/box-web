# settings for nginx
sudo rm -r /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#sudo service nginx stop
sudo /etc/init.d/nginx restart
#sudo nginx -c /etc/nginx/sites-enabled/test.conf

# settings for gunicorn
sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/hello.py
cd /home/box/web
#sudo gunicorn -b 0.0.0.0:8080 hello:application
sudo gunicorn -c /etc/gunicorn.d/hello.py hello:application

# settings for mysql
#sudo /etc/init.d/mysql start

