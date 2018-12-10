FROM centos:centos6.8
RUN yum install -y httpd php php-fpm php-server php-mysql unzip wget \
&&cd /tmp \
&&wget http://114.115.232.220/ComsenzDiscuz-DiscuzX-master.zip \
&&unzip ComsenzDiscuz-DiscuzX-master.zip \
&&cp -r /tmp/DiscuzX/upload/* /var/www/html/ \
&&chmod -R 777 /var/www/html \
&&rm -rf /tmp/ComsenzDiscuz-DiscuzX-master.zip
