FROM ubuntu

RUN apt-get update && apt-get install -y python-is-python3 && apt-get install -y pip && pip install flask

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
