FROM python:3
ENV PYTHONUNBUFFERED 1

WORKDIR /var/www
COPY . /var/www

RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "library_back/manage.py", "runserver", "0.0.0.0:8000"]
