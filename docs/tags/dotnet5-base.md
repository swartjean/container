# dotnet5-base

[Back to overview](../index.md)

**Base image**: `debian:10.5-slim`  
**Full name**: `ludeeus/container:dotnet5-base`  
[View this on Docker Hub](https://hub.docker.com/r/ludeeus/container/tags?page=1&name=dotnet5-base)

## Environment variables

Variable | Value 
-- | --
`CONTAINER_TYPE` | dotnet5-base
`DEBIAN_FRONTEND` | noninteractive
`DOTNET_CLI_TELEMETRY_OPTOUT` | 1
`DOTNET_RUNNING_IN_CONTAINER` | true
`DOTNET_USE_POLLING_FILE_WATCHER` | true

## Features

- `dotnetcore5-runtime (5.0.0-rc.1.20451.14)`
- `dotnetcore5-sdk (5.0.100-rc.1.20452.10)`

## Debian packages

- `bash`
- `ca-certificates`
- `git`
- `libc6`
- `libgcc1`
- `libgssapi-krb5-2`
- `libicu63`
- `libssl1.1`
- `libstdc++6`
- `nano`
- `procps`
- `wget`
- `zlib1g`



***
<details>
<summary>Generated dockerfile</summary>

<pre>
FROM debian:10.5-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV DOTNET_RUNNING_IN_CONTAINER=true
ENV DOTNET_USE_POLLING_FILE_WATCHER=true
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
ENV CONTAINER_TYPE=dotnet5-base

COPY rootfs/dotnet-base /
COPY rootfs/dotnet5-base /

RUN  \ 
    apt update \ 
    && apt install -y --no-install-recommends --allow-downgrades  \ 
        ca-certificates \ 
        nano \ 
        bash \ 
        wget \ 
        git \ 
        libc6 \ 
        libgcc1 \ 
        libgssapi-krb5-2 \ 
        libicu63 \ 
        libssl1.1 \ 
        libstdc++6 \ 
        zlib1g \ 
        procps \ 
    && bash /build_scripts/install \ 
    && rm -R /build_scripts \ 
    && mkdir -p /dotnet \ 
    && tar zxf /tmp/runtime.tar.gz -C /dotnet \ 
    && tar zxf /tmp/sdk.tar.gz -C /dotnet \ 
    && ln -s /dotnet/dotnet /bin/dotnet \ 
    && dotnet --info \ 
    && rm -fr /var/lib/apt/lists/* \ 
    && rm -fr /tmp/* /var/{cache,log}/*




</pre>

<i>This is a generated version of the context used while building the container, some of the labels will not be correct since they use information in the action that publishes the container</i>
</details>
