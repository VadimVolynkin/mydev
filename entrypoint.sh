#!/bin/bash

# папка с проектом

# ===== миграции базы
# python manage.py makemigrations --no-input
# python manage.py migrate --no-input


# ===== собираем статику -> /static/
python manage.py collectstatic --no-input


# ===== где будем запускать приложение


# = локально
# python manage.py runserver 0.0.0.0:8000                      

# = в проде через гуникорн
# exec gunicorn core.wsgi:application -b 0.0.0.0:8000 --reload   

# = в проде через гуникорн конфиг питона
exec gunicorn --config=/etc/systemd/system/gunicorn.conf.py core.wsgi:application --reload   