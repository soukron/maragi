FROM python:3.10
MAINTAINER soukron@gmbros.net

ENV TZ="Europe/Madrid"

RUN mkdir -p /opt/Nexus/data
WORKDIR /opt/Nexus

ADD Nexus.requirements.txt /opt/Nexus/requirements.txt
RUN pip install -r requirements.txt

ADD Nexus /opt/Nexus

CMD ["python", "-u", "/opt/Nexus/nexus.py"]
