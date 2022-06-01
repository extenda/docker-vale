# Extenda Vale Style

Contains rules, vocabulary, and basic `.vale.ini`.
By Vale's standard, it is considered a complete package.
More information about Vale packages [here](https://vale.sh/docs/topics/packages/)

![Extenda Vale](images/structurizr-ExtendaVale-Container.png)

## Usage

1. Install the Vale CLI. [Instructions](https://vale.sh/docs/vale-cli/installation/)
2. If `.vale.ini` doesn't already exist in your repository add the [following configuration as a base config](docs/base-ini-config.md).
3. Run `vale sync` - this will sync download/sync the styles from your `.vale.ini`.
   Remember to add the styles to `.gitignore`.
   Instructions](https://vale.sh/docs/topics/packages/#packages-and-vcs).
4. Run `vale .` to lint all files in your repository.

[//]: # (## Running docker-vale as Pre-commit hook)
[//]: # ()
[//]: # (Vale lint is a part of [Extenda pre-commit hooks]&#40;https://github.com/extenda/pre-commit-hooks&#41;, and you configure it in the following way.)
[//]: # ()
[//]: # (```yaml)
[//]: # (- repo: git://github.com/extenda/pre-commit-hooks)
[//]: # (    rev: v0.7 # Use the ref you want to point at)
[//]: # (    hooks:)
[//]: # (      - id: vale)
[//]: # (```)

## Running Vale as a pre-commit hook

:warning:
[vale pre-commit](https://github.com/extenda/pre-commit-hooks#available-hooks) is deprecated
and a new hook has not been created.
If you still want to use Vale in your pre-commit hooks,
you can use the following example i your `.pre-commit-config.yaml`

```yaml
- repo: local
    hooks:
      - id: inline-vale-lint-with-bash
        name: inline-vale-lint-with-bash
        entry: bash -c 'vale .'
        language: system
        types: [text]
        pass_filenames: true
```

## Ignoring linter feedback in your markdown

You may ignore lines, words,
or sections in your markdown to be able
to write words that are giving false-positive errors in a markdown file by following these examples.

:warning:
The word `store` is ambiguous and might report errors since it is a non-accepted synonym for `Business Unit`.
Follow this example to get past it while we try to resolve the root issue.

```md
<!-- vale Extenda.BusinessUnits = NO -->
This sentence is: to store an entity in a database.
<!-- vale Extenda.BusinessUnits = YES -->
```

## Development / Contributing

### Getting started

Set up pre-commit hooks:
```bash
pre-commit install
```

Installing dependencies for testing
```bash
npm install
```

### Prerequisites

* [Docker](https://docs.docker.com/get-docker/)
* [Node](https://nodejs.org/)
* [pre-commit hooks](https://pre-commit.com/)

### Testing

The test harness is made up of the following:
* Style yaml file. Located under `Extenda/styles/Extenda`.
* Fixture test folder. For example `fixtures/Terms`. This folder contains:
  * `.vale.ini` - fixture test configuration.
  * `test.md` - markdown file that will be linted for errors, warning, and/or suggestions.
* Rules file that will assert the lint of the `test.md` file above. Located under `features/rules.feature`

To run the tests:

```bash
npm run test
```

### Adding new linting rules with the corresponding test

Tests are based on naming conventions.
A folder under the `fixtures` folder MUST match the corresponding style file under `Extenda/styles/`.
For example,
the test fixture folder `fixtures/BusinessUnits` MUST be named the same as `Extenda/styles/Extenda/BusinessUnits.yml`.

Here is a scenario where we want to add a new style file name `New.yml`

1. Create style file `.Extenda/styles/Extenda/New.yml`
2. Create fixture folder `fixtures/New`
3. Create vale.ini config for just this style file `fixtures/New/.vale.ini`
4. Create test.md file that will some lines that will pass and some that will fail `fixtures/New/test.md`
5. Add a section for `New` in `features/rules.feature`.

### C4 diagrams

All C4 diagrams must be created with [Structurizr DSL](https://github.com/structurizr/dsl#readme). Use the provided
`dsl2png.sh` script to create PNG images from the DSL. Use the `--watch` flag while making changes.
This will give a live preview of the diagrams in your browser at http://localhost:3000.

```bash
./dsl2png.sh --watch
```
> :bulb: On Windows 10? Use `dsl2png.cmd` instead.

## Known issues

* Package config `StylesPath` is set to `.github/styles`.
  It should work with just `styles`, but that creates a duplicate styles folder in the root of the consuming repo.
  If we default our styles to be located under .github/styles we are OK.

* If you want to run Vale as an NPM action, you can use the module
  (@ocular-d/vale-bin)[https://www.npmjs.com/package/@ocular-d/vale-bin].
  This module is not official and might not work with the `glob` patterns specified in your `.vale.ini` file.

## Maintainers

The docker-vale maintainers are the members of the following team:

- [Development chapter](https://github.com/orgs/extenda/teams/chapter-development)


## License
Distributed under the MIT License. See [LICENSE](LICENSE) for more information.
