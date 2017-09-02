FROM nginx
COPY nginx.conf /etc/nginx/myconf.conf
COPY mime.types /etc/nginx/mime.types

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
