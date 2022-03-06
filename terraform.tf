terraform {
  required_version = "1.1.6"

  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "5.0.1"
    }
  }
}
