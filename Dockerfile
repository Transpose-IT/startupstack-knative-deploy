FROM alpine:3.10.3
ARG KUBECTL_VERSION="v1.16.1"
ARG ISTIO_VERSION="1.4.0"
RUN apk add curl
RUN curl -s -L --output kubectl https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl && \
    chmod 755 kubectl && mv kubectl /usr/local/bin
RUN curl -s -L --output istioctl.tar.gz https://github.com/istio/istio/releases/download/$ISTIO_VERSION/istioctl-$ISTIO_VERSION-linux.tar.gz && \
    tar -zxf istioctl.tar.gz && \
    chmod 755 istioctl && mv istioctl /usr/local/bin

