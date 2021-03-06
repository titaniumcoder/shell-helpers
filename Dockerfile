FROM ubuntu:20.04
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -yq curl vim awscli jq software-properties-common unzip zip wget
RUN curl -s "https://get.sdkman.io" | bash
RUN curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.2.0/2.13-2.2.0 > /usr/local/bin/amm && chmod +x /usr/local/bin/amm
SHELL ["/bin/bash", "-c"] 
RUN source /root/.sdkman/bin/sdkman-init.sh && sdk install java
RUN wget https://archive.apache.org/dist/kafka/2.7.0/kafka_2.13-2.7.0.tgz
RUN tar xvfz kafka_2.13-2.7.0.tgz
RUN rm kafka_2.13-2.7.0.tgz
RUN echo 'export PATH=$PATH:/kafka_2.13-2.7.0/bin/' >> ~/.bashrc
ENV KAFKA_HEAP_OPTS="-Xms512m -Xmx1g"
