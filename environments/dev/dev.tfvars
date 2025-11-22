s3_bucket = {
  Paeti-dev = {
    bucket      = "Paeti-dev"       # required
    Environment = "dev"
    tags = {
      project = "myproject"
    }
  }

  Jar-dev = {
    bucket      = "Jar-dev"
    Environment = "dev"
    tags = {
      project = "myproject"
    }
  }
}
