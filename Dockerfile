FROM python:3.9.5-slim-buster

# переменные окружения для python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip3 install pipenv

WORKDIR /usr/src/app

ADD . .
RUN chmod +x entrypoint.sh
# копируем это в WORKDIR
# ADD requirements.txt .
# ADD Pipfile .
# ADD Pipfile.lock .

# ADD entrypoint.sh .

ADD backend/configs/ /etc/systemd/system

# RUN pip install -r requirements.txt
WORKDIR /usr/src/app/backend
RUN set -ex && pipenv install --deploy --system

ENTRYPOINT ["sh", "/usr/src/app/entrypoint.sh" ]