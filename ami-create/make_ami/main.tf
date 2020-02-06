variable "make_image_id" {}

resource "aws_ami_from_instance" "aimcreate" {
  name               = "TEST2_instance_AMI ${var.make_image_id}"
  source_instance_id = "${var.make_image_id}"
  snapshot_without_reboot = "1"

  tags = {
    Product     = "MyProductName"
    Deploy     = "ALL"
  }
}

#resource "null_resource" "sleeping_subprocess" {
#  provisioner "local-exec" {
#      command = "sleep 600"
#  }
#}

#  timeouts  {
#    create = "10m"
#   delete = "2h"
#  }
  