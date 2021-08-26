# docker-vale

This docker image contains

* [Vale CLI](https://github.com/errata-ai/vale)
* Extenda Vale lint style and
* Extenda vale lint vocabulary
* A default Vale configuration file. Command line arguments can override some of the default settings, see `--help` for more information.

This docker images aims to make it easier to lint natural language in our repositories.

## Usage

To start using Vale, run with argument `--help`

```bash
docker run --rm -v $(pwd):/project_root -w /project_root extenda/vale --help
```

To lint everything, run with argument `.`

```bash
docker run --rm -v $(pwd):/project_root -w /project_root extenda/vale .
```

## License

Released under the MIT license.
