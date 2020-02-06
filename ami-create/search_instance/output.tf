output "my_instance" {
  value = "${data.aws_instance.inst_id.id}"
}
