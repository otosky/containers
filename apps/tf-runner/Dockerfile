ARG VERSION=0.16.3
FROM ghcr.io/flux-iac/tf-runner:v${VERSION}

USER root

RUN apk add --no-cache \
    gcompat \
    libc6-compat \
    libstdc++

COPY apps/tf-runner/entrypoint.sh /usr/local/bin/tf-runner-entrypoint
RUN chmod +x /usr/local/bin/tf-runner-entrypoint

USER 65532:65532

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/tf-runner-entrypoint"]
