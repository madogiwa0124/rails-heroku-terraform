# Rails Heroku Terraform

[![Terraform](https://img.shields.io/badge/terraform-v0.12.31-blue.svg)](https://www.terraform.io/)
[![Terraform Provider Heroku](https://img.shields.io/badge/heroku_provider-v4.6.0-blue.svg)](https://github.com/heroku/terraform-provider-heroku)

This repository is the terraform template for running Rails on Heroku.

## 💻 Setup

Intall the following tools. You can install them all together with `brew bundle`.

|name|description|
|---|----|
|[tfenv](https://github.com/tfutils/tfenv) | Allows you to install Terraform by specifying the version. |
|[direnv](https://github.com/direnv/direnv) | Allows you to manage environment variables on a directory-by-directory basis.
|[tfsec](https://github.com/aquasecurity/tfsec) | Security checker for tf files. |

After install, add the following environment variables and then execute `direnv allow .`.

``` sh
export HEROKU_EMAIL="your heroku email"
export HEROKU_API_KEY="your heroku api key"
```

## 🎮 Commands

**Check plan**

``` sh
$ terraform plan -out=current.tfplan 
```

**Apply plan**

``` sh
$ terraform apply current.tfplan
```

**Lint**

``` sh
$ terraform validate
$ terraform fmt -check
$ tfsec .
```

**Format**

```sh
$ terraform fmt
```

## 📚 Documents

* [Terraform](https://www.terraform.io/docs/index.html)
* [Heroku Provider](https://registry.terraform.io/providers/heroku/heroku/latest/docs)
