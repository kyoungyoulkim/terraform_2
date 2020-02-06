provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "add-example" {
  ami           = "ami-40d28157"
  availability_zone = "us-east-1c"
  subnet_id = "subnet-064aac13dd47c94d7"
  vpc_security_group_ids = ["sg-0daf452694a33a468"]
  instance_type = "t2.micro"
##  security_groups = ["sg-0daf452694a33a468"]
  root_block_device {
    delete_on_termination = "true"
    volume_size = "8"
    volume_type = "gp2"
    }
  ebs_block_device {
    device_name = "/dev/sdb"
    delete_on_termination = "true"
    volume_size = "9"
    volume_type = "gp2"
    }

  tags = {
    Name = "terraform-add-example"
  }
  

}