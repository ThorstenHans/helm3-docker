FROM debian:latest AS build

ENV HELM_VERSION=3.8.2
ENV RELEASE_ROOT="https://get.helm.sh"
ENV RELEASE_FILE="helm-v${HELM_VERSION}-linux-amd64.tar.gz"

RUN apt-get update && apt-get install curl -y && \
    curl -L ${RELEASE_ROOT}/${RELEASE_FILE} | tar xvz && \
    mv linux-amd64/helm /usr/bin/helm && \
    chmod +x /usr/bin/helm

FROM bitnami/kubectl:latest

LABEL maintainer="Thorsten Hans <thorsten.hans@gmail.com>"
COPY --from=build /usr/bin/helm /usr/bin/helm

HEALTHCHECK --interval=15s --timeout=5s CMD helm -h
WORKDIR /app

ENTRYPOINT ["helm"]
CMD ["-h"]
