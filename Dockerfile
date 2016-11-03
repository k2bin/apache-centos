FROM centos
RUN yum -y httpd && yum clean all -y
RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf
RUN chgrp -R 0 /run/httpd && chmog g+rwx /run/httpd
EXPOSE 8080
CMD httpd -DFOREGROUND
