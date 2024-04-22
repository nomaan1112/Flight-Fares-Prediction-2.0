FROM python:3.8-slim-buster

RUN apt update -y && apt install awscli -y
WORKDIR /app
EXPOSE 8080
COPY . /app

RUN pip install -r requirements.txt
CMD ["python3", "app.py"]