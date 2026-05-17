ARG VERSION=0.16.3
FROM ghcr.io/flux-iac/tf-runner:v${VERSION}

USER root

RUN apk add --no-cache \
    gcompat \
    libc6-compat \
    libstdc++

USER 65532:65532
