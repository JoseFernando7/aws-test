FROM python:3.10

ENV PYTHONUNBUFFERED 1

WORKDIR /django-app

COPY requirements.txt /django-app/

RUN pip install -r requirements.txt

COPY . /django-app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]