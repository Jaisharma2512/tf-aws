s3_bucket = {
  Paeti-dev = {
    bucket      = "paeti-dev"       # required
    Environment = "dev"
    tags = {
      project = "myproject"
    }
    enable_versioning = true
  }

  Jar-dev = {
    bucket      = "jarun-dev"
    Environment = "dev"
    tags = {
      project = "myproject"
    }
       enable_versioning = true
  }
}
