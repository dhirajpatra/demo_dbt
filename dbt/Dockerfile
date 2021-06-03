# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
# FROM python:3.8.0-alpine

WORKDIR /app
VOLUME /app

COPY requirements.txt requirements.txt
COPY profiles.yml profiles.yml

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN apt update
RUN apt install -y git

RUN pip install -r requirements.txt

RUN useradd -mU dbt_user

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONIOENCODING=utf-8
ENV LANG C.UTF-8

COPY . .

RUN dbt deps

# USER dbt_user

ENV DBT_PROFILES_DIR=/app

# Make dbt an API
ENTRYPOINT ["dbt"]
