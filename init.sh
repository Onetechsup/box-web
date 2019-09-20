# settings for nginx
sudo rm -r /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#sudo service nginx stop
sudo /etc/init.d/nginx restart
#sudo nginx -c /etc/nginx/sites-enabled/test.conf

# settings for gunicorn
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
cd /home/box/web
#sudo gunicorn -b 0.0.0.0:8080 hello:application
sudo gunicorn -c /etc/gunicorn.d/test hello:application

# settings for mysql
#sudo /etc/init.d/mysql start

