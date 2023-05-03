data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "totally-real-bucket"
    key    = "network.tfstate"
    region = "us-west-2"
  }
}