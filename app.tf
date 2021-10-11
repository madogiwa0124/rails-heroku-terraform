variable "app_name" {
  description = "The name of the application."
  default     = "sample-app"
}

variable "rails_master_key" {
  description = "The master.key for your rails app credencials."
}

resource "heroku_app" "app" {
  name   = var.app_name
  region = "us"
  # (Optional) not necessary if you are only using assets precompile.used only assets:precompile
  buildpacks = ["heroku/nodejs", "heroku/ruby"]
  # (Optional) enviroment variables.
  # config_vars = {
  #   FOOBAR = "baz"
  # }
  sensitive_config_vars = {
    RAILS_MASTER_KEY = "${var.rails_master_key}"
  }

  lifecycle {
    prevent_destroy = true
  }
}
