FROM python:3.10
MAINTAINER soukron@gmbros.net

ENV TZ="Europe/Madrid"

RUN apt-get update && \
    apt-get install -y nano && \
    apt-get clean all

RUN mkdir -p /opt/Nexus && \
    mkdir -p /opt/Nexus/data 
WORKDIR /opt/Nexus

ADD Nexus.requirements.txt /opt/Nexus/requirements.txt
RUN pip install -r requirements.txt

ADD Nexus /opt/Nexus

CMD ["python", "-u", "/opt/Nexus/nexus.py"]
