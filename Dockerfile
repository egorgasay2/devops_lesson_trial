FROM nginx
RUN mkdir /var/www
RUN rm -f /etc/nginx/conf.d/default.conf
RUN chown nginx:nginx -R /var/www
COPY landing/. /var/www/
COPY site.conf /etc/nginx/conf.d/
