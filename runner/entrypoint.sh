#!/bin/bash
# configure runner
${HOME}/actions-runner/config.sh \
  --unattended \
  --url "https://github.com/${RUNNER_PATH}" \
  --token "${RUNNER_TOKEN}" \
  --name "${RUNNER_NAME}" \
  --runnergroup "${RUNNER_GROUP}" \
  --labels "${RUNNER_LABELS}" \
  --work "${RUNNER_WORKDIR}"



# cleanup on exit
cleanup() {
    echo "Removing runner..."
    ${HOME}/actions-runner/config.sh remove \
      --token ${RUNNER_TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

# start runner
${HOME}/actions-runner/run.sh & wait $!