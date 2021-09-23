variable "web_quantity" {
  description = "The number of the web quantity."
  default = 1
}

variable "worker_quantity" {
  description = "The number of the worker quantity."
  default = 1
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
