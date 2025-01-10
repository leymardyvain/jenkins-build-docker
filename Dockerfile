FROM nginx:latest
RUN sed -i 's/nginx/yvain/g' /usr/share/nginx/html/index.html
EXPOSE 80

