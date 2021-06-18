# ===== конфиг для гуникорна в виде питонфайла
# запуск: gunicorn -c gunicorn.conf.py
# в entrypoint exec gunicorn --config=/usr/src/app/backend/gunicorn/gunicorn.conf.py core.wsgi:application --reload 

bind = "0.0.0.0:8001"                # через tcp
# bind = "unix:/run/gunicorn.sock"     # или только локально через unix socket

workers = 5
user = "root"
group = "root"

# proc_name = "blog"
# pidfile = "/usr/src/app/backend/gunicorn/gunicorn.pid"

loglevel = "info"
# loglevel = 'debug'
errorlog = '-'
accesslog = '-'
# errorlog = '/usr/src/app/backend/gunicorn/gunicorn_error.log'
# accesslog = '/usr/src/app/backend/gunicorn/gunicorn_access.log'
access_log_format = '%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s"'






# errorlog = '-'
# loglevel = 'info'
# accesslog = '-'
# access_log_format = '%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s"'