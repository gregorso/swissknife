FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y --no-install-recommends nano wget curl openssl jq git
RUN rm -r /var/lib/apt/lists /var/cache/apt/archives
LABEL maintainer="Gregor Soll"