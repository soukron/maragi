FROM python:3.10
MAINTAINER soukron@gmbros.net

ENV TZ="Europe/Madrid"

RUN apt-get update && \
    apt-get install -y nano && \
    apt-get clean all

RUN mkdir -p /opt/EmbeddingService
WORKDIR /opt/EmbeddingService

ADD EmbeddingService.requirements.txt /opt/EmbeddingService/requirements.txt
RUN pip install -r requirements.txt

ADD EmbeddingService /opt/EmbeddingService

CMD ["python", "-u", "/opt/EmbeddingService/USEv5_microservice.py"]
