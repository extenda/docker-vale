A linter is a tool that helps identify potential issues with your documentation text based on style guides.
Extenda Retail uses the lint tool [Vale prose linter](https://docs.errata.ai/vale/about). Vale is a natural language linter that supports plain text,
markup (Markdown, reStructuredText, AsciiDoc, and HTML), and source code comments.
Vale doesn't attempt to offer a one-size-fits-all collection of rules, instead it strives to make customization as easy as possible.

[Docker-vale](https://github.com/extenda/docker-vale) is the official Extenda docker image for Vale. A Docker image is a
read-only template that contains a set of instructions for creating a container that can run on the Docker platform.
Docker-vale creates an Extenda.zip that contains Extenda Style. Extenda Retail use this style in addition to the [Google style](https://developers.google.com/style/word-list).

[Extenda vale-action](https://github.com/extenda/vale-action) is a fork (a copy of a repository) of the [official vale-action](https://github.com/errata-ai/vale-action).
Changes done to Extenda vale-action are changes to get the exclude-pattern (what should not be linted) and passCondition
(how many errors or warnings do we allow for GitHub Actions to let it pass).

Extenda vale-action linting uses the Extenda Style created in docker-vale.
It also uses vale-action (the one that makes the GitHub actions ribbon). Go to [Extenda's action repository](https://github.com/extenda/actions/tree/master/vale-linting) to see how this
vale-linting GitHub Action works.

Here’s a usage example of actions / vale-linting:

```yaml
- name: Lint natural language with Vale
    uses: extenda/actions/vale-linting@v0
    with:
      exclude: |
        .github/**/*
        .scripts/**/*
    env:
      GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```


[This documentation](https://passo.uno/posts/first-steps-with-the-vale-prose-linter/) is great reading if you want to know more about Vale prose linter.
