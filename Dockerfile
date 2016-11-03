FROM centos
RUN yum -y install httpd && yum clean all -y
RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf
RUN chgrp -R 0 /run/httpd /etc/httpd/logs && chmod g+rwx /run/httpd /etc/httpd/logs
EXPOSE 8080
CMD httpd -DFOREGROUND
