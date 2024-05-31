FROM python

WORKDIR /app

COPY . /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]

