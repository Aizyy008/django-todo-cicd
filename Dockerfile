#FROM python:3
FROM python:3.9-slim

WORKDIR /data

RUN pip install django==3.2

COPY . .

#RUN apt-get update && apt-get install -y python3-distutils

#RUN python manage.py makemigrations

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]


