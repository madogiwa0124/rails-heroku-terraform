# Rails Heroku Terraform

This repository is the terraform template for running Rails on Heroku.

## 💻 Setup

Intall the following tools.

|name|description|
|---|----|
|[tfenv](https://github.com/tfutils/tfenv) | Allows you to install Terraform by specifying the version. |
|[direnv](https://github.com/direnv/direnv) | Allows you to manage environment variables on a directory-by-directory basis.

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

## 📚 Documents

* [Terraform](https://www.terraform.io/docs/index.html)
* [Heroku Provider](https://registry.terraform.io/providers/heroku/heroku/latest/docs)
