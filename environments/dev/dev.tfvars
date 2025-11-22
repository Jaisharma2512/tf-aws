s3_bucket = {
  Paeti = {
    bucket      = "paeti-dev"       # required
    Environment = "dev"
    tags = {
      project = "myproject"
    }
  }

  Jar = {
    bucket      = "jar-dev"
    Environment = "dev"
    tags = {
      project = "myproject"
    }
  }
}
