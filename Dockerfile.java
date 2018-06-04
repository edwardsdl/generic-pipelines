FROM maven:3-jdk-8

RUN curl -fsSL get.docker.com | sh

RUN apt-get update && apt-get install -y jq zip

COPY stages stages

WORKDIR /app
