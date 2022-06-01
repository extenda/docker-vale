# Default `.vale.ini`

The following configuration will enable both the `Google` and the `Extenda` style, as well as the `Extenda` vocabulary.
This configuration can be extended as you want in your repository.
[Follow these instructions](https://vale.sh/docs/topics/config/) on how to configure the `.vale.ini`.

```ini
StylesPath = .github/styles
MinAlertLevel = error

Packages = https://github.com/extenda/docker-vale/releases/download/latest/Extenda.zip

Vocab = Extenda

[formats]
ts=js

[*.{md,txt}]
BasedOnStyles = Google, Extenda
```
