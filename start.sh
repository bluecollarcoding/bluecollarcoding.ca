#! /bin/bash

git config --global user.email "me@me.com"
git config --global user.name "Me"

# if no ssl, turn ssl off
if [ $NO_SSL ]; then
	ln -s /etc/nginx/sites-available/bcc_site.conf /etc/nginx/sites-enabled/bcc_site.conf
else
	ln -s /etc/nginx/sites-available/bcc_site_ssl.conf /etc/nginx/sites-enabled/bcc_site_ssl.conf
fi

/usr/sbin/nginx -g "daemon off;"
