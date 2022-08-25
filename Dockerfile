FROM python:3
ENV PYTHONUNBUFFERED 1

WORKDIR /var/www
COPY library_back/ /var/www

RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh .
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
CMD ["run-back", "django-gunicorn"]
