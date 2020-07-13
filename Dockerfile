FROM ubuntu:20.04
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -yq curl vim awscli jq software-properties-common
