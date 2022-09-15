# surrealdb-action

Github Action for using SurrealDB in your tests

## Action Args

### surrealdb-version

The version of SurrealDB to run

Default: "latest"

Possible values: https://hub.docker.com/r/surrealdb/surrealdb/tags

### surrealdb-port

The port SurrealDB will be bound to

Default: 8000

## Usage

```yaml
name: Run tests
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: Git checkout
      uses: actions/checkout@v2

    - name: Start SurrealDB
      uses: jvllmr/surrealdb-action@1.0
      with:
        surrealdb-version: latest
        surrealdb-port: 8000
    ...
```
