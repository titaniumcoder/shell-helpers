FROM ubuntu:20.04
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -yq curl vim awscli jq software-properties-common unzip zip
RUN curl -s "https://get.sdkman.io" | bash
RUN curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.2.0/2.13-2.2.0 > /usr/local/bin/amm && chmod +x /usr/local/bin/amm
