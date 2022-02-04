ARG RSOCKET_CLI_VESION=0.9.1

FROM buildpack-deps:20.04-curl AS download

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install -y unzip \
  && rm -rf /var/lib/apt/lists/*
ARG RSOCKET_VESION
RUN curl -fsSL https://github.com/making/rsc/releases/download/${RSOCKET_CLI_VESION}/rsc-x86_64-pc-linux \
    --output rsocket-cli \
  && mkdir -p ./rsocket-cli-d/bin && mv rsocket-cli rsocket-cli-d/bin/rsocket-cli  \
  && chmod 755 rsocket-cli-d/bin/rsocket-cli

FROM ubuntu:22.04

ENV RSOCKET_CLI_VESION=${RSOCKET_CLI_VESION}
COPY --from=download /rsocket-cli-d /rsocket-cli
ENV RSOCKET_PATH /rsocket-cli
ENV PATH $RSOCKET_PATH/bin:$PATH

ENTRYPOINT ["rsocket-cli"]
