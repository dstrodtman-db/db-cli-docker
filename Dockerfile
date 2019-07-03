FROM frolvlad/alpine-python3

RUN pip3 install databricks-cli

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN echo 'export PS1="DB-CLI:\W $ "' > /root/.bashrc

RUN git config --global user.email "DB-CLI@foo.bar" && \
    git config --global user.name "DB-CLI"
