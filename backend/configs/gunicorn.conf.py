# конфиг для гуникорна
# запуск gunicorn -c gunicorn.conf.py


bind = "0.0.0.0:8000"
# bind = "127.0.0.1:8888"
# или через сокет
# bind = "unix:/etc/systemd/system/gunicorn.sock"
workers = 5
user = "root"
group = "root"
# logfile = "/home/proft/projects/blog/log/gunicorn.log"
# loglevel = "info"
# proc_name = "blog"
# pidfile = "/home/proft/projects/blog/gunicorn.pid"