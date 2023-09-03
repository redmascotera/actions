# redmascotera/actions
Custom Github Actions for RedMascotera

* [PyLint](#pylint)

## PyLint

Action to run `pylint` on Python Projects.

### Usage:

In your workflow, add `redmascotera/actions/pylint@main`

Example Workflow file:

```yaml
on: [push, pull_request]

jobs:
  run_pylint:
    runs-on: ubuntu-latest
    name: Run pylint
    steps:
      - uses: actions/checkout@v3
      - id: lint
        uses: redmascotera/actions/pylint@main

```
