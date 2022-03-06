resource "heroku_addon" "database" {
  app_id = heroku_app.app.id
  plan   = "heroku-postgresql:hobby-dev"

  lifecycle {
    prevent_destroy = true
  }
}

resource "heroku_addon" "redis" {
  app_id = heroku_app.app.id
  plan   = "heroku-redis:hobby-dev"

  lifecycle {
    prevent_destroy = true
  }
}

resource "heroku_addon" "papertrail" {
  app_id = heroku_app.app.id
  plan   = "papertrail:choklad"
}

resource "heroku_addon" "scheduler" {
  app_id = heroku_app.app.id
  plan   = "scheduler:standard"
}
