module "search-instance" {
  source = "./search_instance"
  region = "ap-northeast-2"
}

module "create-ami" {
  source   = "./make_ami"
  region   = "ap-northeast-2"
  make_image_id = "${module.search-instance.my_instance}"
}