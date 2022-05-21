FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y --no-install-recommends nano wget curl openssl jq git apt-transport-https ca-certificates
# kubectl
RUN curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y --no-install-recommends kubectl
RUN rm -r /var/lib/apt/lists /var/cache/apt/archives
LABEL maintainer="Gregor Soll"