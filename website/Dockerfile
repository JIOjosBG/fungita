FROM python:3.8-slim-buster

WORKDIR /website

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 80
CMD ["python","web/manage.py","runserver","0.0.0.0:8000"]