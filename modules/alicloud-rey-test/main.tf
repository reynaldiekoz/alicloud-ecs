#Current aliyun/alicloud providers 
terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.132.0"
    }
  }
}

#Alicloud simple VPC
resource "alicloud_vpc" "default" {
  vpc_name   = var.name
  cidr_block = var.vpc_cidr_block
}

#Alicloud simple Vswitch
resource "alicloud_vswitch" "default" {
  zone_id      = data.alicloud_zones.default.zones[0].id
  vswitch_name = var.name
  vpc_id       = alicloud_vpc.default.id
  cidr_block   = var.vswitch_cidr_block
  description  = var.vpc_description
}

#Alicloud simple Security Group
resource "alicloud_security_group" "default" {
  vpc_id      = alicloud_vpc.default.id
  name        = var.name
  description = var.description
}

#Alicloud avilable resource
data "alicloud_zones" "default" {
  available_disk_category     = var.available_disk_category
}

#Alicloud ECS instance 1
resource "alicloud_instance" "default1" {
  availability_zone          = data.alicloud_zones.default.zones[0].id
  instance_name              = var.name_instance1
  security_groups            = alicloud_security_group.default.*.id
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.name_instance1
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = false
  }
}

#Alicloud ECS instance 2
resource "alicloud_instance" "default2" {
  availability_zone          = data.alicloud_zones.default.zones[0].id
  instance_name              = var.name_instance2
  security_groups            = alicloud_security_group.default.*.id
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.name_instance2
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = false
  }
}

#Alicloud ECS instance 3

resource "alicloud_instance" "default3" {
  availability_zone          = data.alicloud_zones.default.zones[0].id
  instance_name              = var.name_instance3
  security_groups            = alicloud_security_group.default.*.id
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.name_instance3
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = false
  }
}

#Alicloud ECS instance 4

resource "alicloud_instance" "default4" {
  availability_zone          = data.alicloud_zones.default.zones[0].id
  instance_name              = var.name_instance4
  security_groups            = alicloud_security_group.default.*.id
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.name_instance4
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = false
  }
}

#Alicloud ECS instance 5

resource "alicloud_instance" "default5" {
  availability_zone          = data.alicloud_zones.default.zones[0].id
  instance_name              = var.name_instance5
  security_groups            = alicloud_security_group.default.*.id
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.name_instance5
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = false
  }
}

#Alicloud ECS instance 6
resource "alicloud_instance" "default6" {
  availability_zone          = data.alicloud_zones.default.zones[0].id
  instance_name              = var.name_instance6
  security_groups            = alicloud_security_group.default.*.id
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.name_instance6
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = false
  }
}