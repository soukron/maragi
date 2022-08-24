FROM python:3.10
MAINTAINER soukron@gmbros.net

ENV TZ="Europe/Madrid"

RUN apt-get update && \
    apt-get install -y nano && \
    apt-get clean all

RUN mkdir -p /opt/ImperativeService && \
    mkdir -p /opt/ImperativeService/gpt3_logs && \
    mkdir -p /opt/ImperativeService/logs
WORKDIR /opt/ImperativeService

ADD ImperativeService.requirements.txt /opt/ImperativeService/requirements.txt
RUN pip install -r requirements.txt

ADD openaiapikey.txt /opt/ImperativeService/openaiapikey.txt

ADD ImperativeService /opt/ImperativeService

CMD ["python", "-u", "/opt/ImperativeService/imperative_microservice.py"]
