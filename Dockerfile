FROM frolvlad/alpine-python3

RUN pip3 install databricks-cli

RUN apk add --no-cache bash

ADD prompt.sh /root/.bashrc
