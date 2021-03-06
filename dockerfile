FROM python:3.7-alpine
MAINTAINER Akshay Kolte

ENV PULSE_SERVER /run/pulse/native

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user