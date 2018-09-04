FROM alpine:3.8

LABEL maintainer="Lucas Mior <lucas.mior@gmail.com>"

ARG HELM_VERSION=2.9.1

RUN apk add curl \
 && curl https://storage.googleapis.com/kubernetes-helm/helm-v${HELM_VERSION}-linux-amd64.tar.gz -o helm-v${HELM_VERSION}-linux-amd64.tar.gz \
 && tar xvzf helm-v${HELM_VERSION}-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin/helm \
 && rm helm-v${HELM_VERSION}-linux-amd64.tar.gz \
 && apk del curl

WORKDIR /app

ENTRYPOINT [ "helm" ]
