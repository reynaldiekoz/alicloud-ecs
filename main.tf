# Dont forget to set aliyun-cli credential before using

#Profile to be set on aliyun-cli
variable "profile" {
  default = "reynaldi"
}
#Region to be set on aliyun-cli
variable "region" {
  default = "ap-southeast-1"
}
#Set the credentials on aliyun-cli to be assigned with TF
provider "alicloud" {
  region  = var.region
  profile = var.profile
}

#Module call to launch 6 ecs instance  
module "alicloud-rey-test" {
  source            = "./modules/alicloud-rey-test"
  name              = "reynaldi-tf-test"
  name_instance1    = "app1-reytf"
  name_instance2    = "app2-reytf"
  name_instance3    = "web1-reytf"
  name_instance4    = "web2-reytf"
  name_instance5    = "db1-reytf"
  name_instance6    = "db2-reytf"
  instance_type     = "ecs.n4.small"
}


