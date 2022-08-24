FROM python:3.10
MAINTAINER soukron@gmbros.net

ENV TZ="Europe/Madrid"

RUN apt-get update && \
    apt-get install -y nano && \
    apt-get clean all

RUN mkdir -p /opt/SimulationService/{gpt3_logs,logs}
WORKDIR /opt/SimulationService

ADD SimulationService.requirements.txt /opt/SimulationService/requirements.txt
RUN pip install -r requirements.txt

ADD openaiapikey.txt /opt/SimulationService/openaiapikey.txt

ADD SimulationService /opt/SimulationService

CMD ["python", "-u", "/opt/SimulationService/simulation_microservice.py"]

