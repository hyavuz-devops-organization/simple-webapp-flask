FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip install flask
COPY app.py /my-simple-webapp/app.py
ENTRYPOINT FLASK_APP=/my-simple-webapp/app.py flask run --host=0.0.0.0 --port=5000
