FROM ubuntu
WORKDIR .
COPY . .
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt install -y python3 python3-pip
RUN pip install flask && apt-get install -y python3-tk
RUN apt-get install -y sqlite3
EXPOSE 5000
#RUN FLASK_APP=./app.py flask run --host=0.0.0.0
CMD FLASK_APP=./app.py flask run --host=0.0.0.0
