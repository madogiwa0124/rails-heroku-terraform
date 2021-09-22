provider "heroku" {}

variable "app_name" {
  description = "The name of the application."
  default = "sample-app"
}

variable "web_quantity" {
  description = "The number of the web quantity."
  default = 1
}

variable "worker_quantity" {
  description = "The number of the worker quantity."
  default = 1
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

resource "heroku_addon" "database" {
  app = heroku_app.app.name
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_addon" "redis" {
  app = heroku_app.app.name
  plan = "heroku-redis:hobby-dev"
}

# =========================
# heroku formation
# required Procfile in repository.
# ex)
# ```
# web: bin/rails server -p ${PORT:-5000} -e $RAILS_ENV
# worker: bundle exec sidekiq
# ```
# =========================
#
# resource "heroku_formation" "web" {
#   app = heroku_app.app.name
#   type = "web"
#   size = "hobby"
#   quantity = var.web_quantity
# }
#
# resource "heroku_formation" "worker" {
#   app = heroku_app.app.name
#   type = "worker"
#   size = "hobby"
#   quantity = var.worker_quantity
# }
