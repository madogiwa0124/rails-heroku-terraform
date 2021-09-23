provider "heroku" {}

variable "app_name" {
  description = "The name of the application."
  default = "sample-app"
}

resource "heroku_app" "app" {
  name = var.app_name
  region = "us"
  # (Optional) not necessary if you are only using assets precompile.used only assets:precompile
  buildpacks = ["heroku/nodejs", "heroku/ruby"]
  # (Optional) enviroment variables.
  # config_vars = {
  #   FOOBAR = "baz"
  # }
  # sensitive_config_vars = {
  #   SENSITIVE_FOO_BAR = "baz"
  # }
}
