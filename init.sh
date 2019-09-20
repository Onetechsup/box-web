# settings for nginx
sudo rm -r /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#sudo service nginx stop
sudo /etc/init.d/nginx restart
#sudo nginx -c /etc/nginx/sites-enabled/test.conf

# settings for gunicorn
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn.py
#sudo gunicorn -b 0.0.0.0:8080 hello:application
cd /home/box/web && sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:application

# settings for mysql
#sudo /etc/init.d/mysql start

