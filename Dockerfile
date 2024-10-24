FROM python:3.9-slim

WORKDIR /app

RUN mkdir -p /app/tests/

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python", "app.py" ]