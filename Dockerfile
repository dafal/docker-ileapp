FROM python:latest

MAINTAINER eric@daras.family

RUN mkdir /input && mkdir /output

RUN git clone https://github.com/abrignoni/iLEAPP

WORKDIR "/iLEAPP"

RUN pip install -r requirements.txt

RUN  apt-get update && apt-get install -y python3-tk && rm -rf /var/lib/apt/lists/*

VOLUME /input /output

ENTRYPOINT ["python", "/iLEAPP/ileapp.py"]