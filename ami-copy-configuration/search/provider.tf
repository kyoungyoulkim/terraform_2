provider "aws" {
  shared_credentials_file = "/home/coolsoda/.aws/credentials"
  region                  = "${var.region}"
}
