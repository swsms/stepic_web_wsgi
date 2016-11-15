sudo ln -sf /home/art/Mooc/stepic_web_wsgi/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo gunicorn -w 4 -b 0.0.0.0:8080 wsgi_server:app
