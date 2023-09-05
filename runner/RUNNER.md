### Start in-docker self-hosted GitHub Runner

1. `git clone https://github.com/redmascotera/actions`
2. `cd actions/runner`
3. `docker buld . -t github-runner`
4. `docker run -d --name github-runner --env RUNNER_TOKEN=${your_token} --env RUNNER_PATH=${organization_path} github-runner`

### Env vars available

- `RUNNER_TOKEN`: default: `None`, required: yes
- `RUNNER_PATH`: default: `None`, required: yes. Use organizations name or `organization/repository`
- `RUNNER_GROUP`: default: `default`, required: no
- `RUNNER_NAME`: default: `self-hosted-redm`, required: no
- `RUNNER_LABELS`: default: `None`, required: no
- `RUNNER_WORKDIR`: default: `_work`, required: no

