# Learning Boilerplate
Repository to learn about and explore how to utilise the [Boilerplate](https://github.com/gruntwork-io/boilerplate) OSS cross platform project generator/scaffolding tool.

Initial learning resource: [Introducing Boilerplate](https://blog.gruntwork.io/introducing-boilerplate-6d796444ecf6)

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
  --output-folder outputs/terraform-module
```

Non Interactive
```
boilerplate \
  --template-url example-module \
  --output-folder outputs/terraform-module \
  --non-interactive \
  --var-file example-module-vars.yml
```

`terraform-module-full`
- includes terraform-example

Interactive
```
boilerplate \
  --template-url terraform-module-full \
  --output-folder outputs/terraform-module-full 
```

Non Interactive
```
boilerplate \
  --template-url terraform-module-full \
  --output-folder outputs/terraform-module \
  --non-interactive \
  --var-file example-module-vars.yml
```

Run the generated example
```
cd outputs/terraform-module-full/examples/terraform-example
terraform init
terraform apply
```

Run the generated automated test
```
cd outputs/terraform-module-full/tests
go mod init terraform-module-full
go mod tidy'
go test -v
```
