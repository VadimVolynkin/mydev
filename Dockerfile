FROM python:3.9.5-buster

# переменные окружения для python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip3 install pipenv

WORKDIR /usr/src/app

ADD . .
RUN chmod +x entrypoint.sh

WORKDIR /usr/src/app/backend
RUN set -ex && pipenv install --deploy --system

ENTRYPOINT ["sh", "/usr/src/app/entrypoint.sh" ]