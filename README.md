# docker-vale

This docker image contains

* [Vale CLI](https://github.com/errata-ai/vale)
* Extenda Vale lint style and
* Extenda vale lint vocabulary
* A default Vale configuration file. Command-line arguments can override some of the default settings, see `--help` for more information.

This docker image aims to make it easier to lint natural language in our repositories.

## Usage

To start using Vale, run with argument `--help`

```bash
docker run --rm -v $(pwd):/project_root -w /project_root extenda/vale --help
```

To lint everything, run with argument `.`

```bash
docker run --rm -v $(pwd):/project_root -w /project_root extenda/vale .
```

### NPM action

package.json

```json
"scripts": {
    "vale-lint": "docker pull && docker run --rm -v $(pwd):/p -w /p extenda/vale --no-wrap --minAlertLevel=error $(git diff --name-only)"
  }
```

## License

This document is released under the MIT license.
