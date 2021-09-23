resource "heroku_addon" "database" {
  app = heroku_app.app.name
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_addon" "redis" {
  app = heroku_app.app.name
  plan = "heroku-redis:hobby-dev"
}

resource "heroku_addon" "papertrail" {
  app = heroku_app.app.name
  plan = "papertrail:choklad"
}

resource "heroku_addon" "scheduler" {
  app = heroku_app.app.name
  plan = "scheduler:standard"
}
