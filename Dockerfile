FROM python:3.9-slim

WORKDIR /usr/oath
COPY config/requirements.txt config/requirements.txt
RUN pip3 install -r config/requirements.txt

COPY src src

EXPOSE 8000
CMD ["python3", "src/manage.py", "runserver", "0.0.0.0:8000"]
