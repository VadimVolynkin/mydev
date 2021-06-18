#!/bin/bash

# ============================================================================
# СТАТИКА И МИГРАЦИИ ПРИ СТАРТЕ
# ============================================================================

# ===== миграции базы
# python manage.py makemigrations --no-input
# python manage.py migrate --no-input


# ===== собираем статику -> /static/
python manage.py collectstatic --no-input


# ============================================================================
# КАК БУДЕМ ЗАПУСКАТЬ
# ============================================================================

# = локально на джанго runserver
# python manage.py runserver 0.0.0.0:8000                      

# = через uwsgi
# uwsgi --ini /usr/src/app/backend/uwsgi/emperor.ini # the --ini option is used to specify a file

# = через гуникорн
# exec gunicorn core.wsgi:application --bind unix:/run/gunicorn.sock --reload   
exec gunicorn --config=/usr/src/app/backend/gunicorn/gunicorn.conf.py core.wsgi:application --reload 
