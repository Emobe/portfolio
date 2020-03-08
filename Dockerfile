FROM nginx
WORKDIR dist
COPY . /usr/share/nginx/html
