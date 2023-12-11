FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y --no-install-recommends nano wget curl openssl jq git apt-transport-https ca-certificates dnsutils
# kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
RUN echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN rm -r /var/lib/apt/lists /var/cache/apt/archives
LABEL maintainer="Gregor Soll"