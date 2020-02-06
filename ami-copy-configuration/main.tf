data "aws_ami" "deploy" {
  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:Product"
    values = ["MyProductName"]
  }

  filter {
    name   = "tag:Deploy"
    values = ["ALL"]
  }

  most_recent = true
  owners      = ["self"]
}