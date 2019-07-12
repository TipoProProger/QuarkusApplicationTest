FROM nginx

VOLUME "/etc/nginx"
VOLUME "/usr/share/nginx/html"

EXPOSE 80
COPY angular-project /usr/share/nginx/html/angular-project
COPY nginx/nginx.conf /etc/nginx
