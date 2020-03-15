FROM ludeeus/devcontainer:base

ENV DEVCONTAINER_TYPE frontend

RUN \
    apk add --no-cache \
        nodejs=12.15.0-r1 \
        npm=12.15.0-r1 \
        yarn=1.19.2-r0