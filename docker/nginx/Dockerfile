FROM nginx

# удаляем дефолтный конфиг и добавляем свой
RUN rm /etc/nginx/conf.d/default.conf
ADD nginx.conf /etc/nginx/conf.d
ADD uwsgi_params /etc/nginx