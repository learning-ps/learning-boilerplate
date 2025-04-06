# Learning Boilerplate
Repository to learn about and explore how to utilise the [Boilerplate](https://github.com/gruntwork-io/boilerplate) OSS cross platform project generator/scaffolding tool.

## Devbox
This repository leverages Jetify Devbox to provide a convenient and reliable development environment.

### Devbox Packages

* boilerplate (via local configuration)

* Terraform
* Terragrunt
* TF Lint

> [!NOTE]
> This is a learning repository, things may or may not work that are found here.

## Examples

### Running the examples

`example-module`

Interactive

```
boilerplate \
  --template-url example-module \
  --output-folder tmp/terraform-module
```

Non Interactive
```
boilerplate \
  --template-url example-module \
  --output-folder tmp/terraform-module \
  --non-interactive \
  --var-file example-module-vars.yml
```