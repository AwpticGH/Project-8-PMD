# USE NGINX ALPINE
FROM nginx:alpine

EXPOSE 8081

# COPY FOLDER INTO WORKSPACE
COPY . /usr/share/nginx/html/Project-8-PMD/