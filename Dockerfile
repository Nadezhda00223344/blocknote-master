FROM python:3.8

WORKDIR /usr/src/app
COPY ./ ./
RUN pip3 install -r requirements.txt
RUN python3 -m venv env
RUN env/bin/pip install -r requirements.txt
EXPOSE 8080
RUN ["python3", "manage.py", "migrate"]
RUN ["python3", "manage.py", "makemigrations"]


