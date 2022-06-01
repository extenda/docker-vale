A linter is a tool that helps identify potential issues with your documentation text based on style guides.
Extenda Retail uses the lint tool [Vale prose linter](https://docs.errata.ai/vale/about).
Vale is a natural language linter that supports plain text,
markup (Markdown, reStructuredText, AsciiDoc, and HTML), and source code comments.
Vale doesn't attempt to offer a one-size-fits-all collection of rules,
instead it strives to make customization as easy as possible.

[Docker-vale](https://github.com/extenda/docker-vale) contains the official Vale package of Extenda.
It creates an Extenda.zip that contains Extenda style, vocabulary, and base `.vale.ini` configuration.
The Extenda package links [Google style](https://developers.google.com/style/word-list) a dependency.

[This documentation](https://passo.uno/posts/first-steps-with-the-vale-prose-linter/) is great reading if you want to know more about Vale prose linter.
