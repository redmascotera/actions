# base
FROM ubuntu:22.04

ENV RUNNER_TOKEN=
ENV RUNNER_PATH=
ENV RUNNER_GROUP=default
ENV RUNNER_NAME=self-hosted-redm
ENV RUNNER_LABELS=
ENV RUNNER_WORKDIR=_work

# set the github runner version
ARG RUNNER_VERSION="2.308.0"
ARG USER_UID=1001
ARG USER_GID=1001

# add additional packages as necessary
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl ca-certificates libicu70

# no root user
RUN groupadd docker -g ${USER_GID}
RUN useradd -m docker -u ${USER_UID} -g ${USER_GID}
USER docker

# cd into the user directory, download and unzip the github actions runner
RUN mkdir /home/docker/actions-runner
WORKDIR /home/docker/actions-runner
RUN curl -O -L https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz \
    && tar xzf ./actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz

COPY entrypoint.sh /home/docker/entrypoint.sh

# set the entrypoint to the start.sh script
ENTRYPOINT ["/home/docker/entrypoint.sh"]