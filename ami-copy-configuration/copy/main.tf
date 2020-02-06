variable "copy_ami" {}

resource "aws_ami_copy" "deploy" {
  name              = "terraform-example"
  description       = "A copy of ${var.copy_ami}"
  source_ami_id     = "${var.copy_ami}"
  source_ami_region = "ap-northeast-2"

  tags = {
    Name = "HelloWorld 2"
  }
}
