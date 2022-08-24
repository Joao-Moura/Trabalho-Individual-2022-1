FROM python:3
ENV PYTHONUNBUFFERED 1

COPY library_back/ /
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /var/www

CMD ["python", "library_back/manage.py", "runserver", "0.0.0.0:8000"]
