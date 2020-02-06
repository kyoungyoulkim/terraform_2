data "aws_instance" "inst_id" {
#  filter {
#    name   = "state"
#    values = ["running"]
#  }

  filter {
    name   = "tag:Name"
    values = ["*Cloud9"]
  }

  filter {
    name   = "tag:Owner"
    values = ["kky.corp"]
  }

#  most_recent = true
#  owners      = ["014477493685"]
}