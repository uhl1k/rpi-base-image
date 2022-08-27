# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM debian:buster-slim

WORKDIR /app

RUN apt update && apt -y upgrade && apt -y install maven openjdk-11-jdk && apt -y install sudo make gcc
RUN apt -y install git && git clone https://github.com/WiringPi/WiringPi.git && cd WiringPi && ./build && cd ..

