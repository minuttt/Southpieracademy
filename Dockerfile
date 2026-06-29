FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 8080
# Configure Nginx to listen on Cloud Run's default port 8080
RUN sed -i 's/listen\(.*\)80;/listen 8080;/g' /etc/nginx/conf.d/default.conf
