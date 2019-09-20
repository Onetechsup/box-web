# settings for nginx
sudo rm -r /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
#sudo service nginx stop
sudo /etc/init.d/nginx restart

# settings for gunicorn
sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
#sudo gunicorn -b 0.0.0.0:8080 hello:application
#sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn.py
#cd /home/box/web && sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:application

# settings for mysql
#sudo /etc/init.d/mysql start

