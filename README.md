 Action Yamllint
========================

Linting Yaml files using the yamllint package directly from pypi.

## Usage

Example of ``.github/workflows/yamllint-check.yml``
```yaml
---
name: Yamllint check

# yamllint disable-line rule:truthy
on: [push, pull_request]

jobs:
  build:
    name: Yamllint
    runs-on: ubuntu-latest

    steps:
      - name: 'checkout git repo'
        uses: actions/checkout@v4
        with:
          submodules: true
          fetch-depth: 0

      - name: Run yamllint
        uses: ansible-actions/yamllint-action@v0.0.1
        with:
          target: "./"
```

This will run the command ``yamllint ./``

## Variables

| name | required | description | example values |
| --- | --- | --- | --- |
| ``target`` | true | Target for yamllint | ``./`` or ``*.yml`` or ``path/to/yamlfiles`` |
