variable "name" {
  description = "The specification of module name."
  type        = string
  default     = "alicloud-rey-test"
}
variable "name_instance1" {
  description = "The specification of module name."
  type        = string
  default     = "alicloud-rey-test"
}
variable "name_instance2" {
  description = "The specification of module name."
  type        = string
  default     = "alicloud-rey-test"
}
variable "name_instance3" {
  description = "The specification of module name."
  type        = string
  default     = "alicloud-rey-test"
}
variable "name_instance4" {
  description = "The specification of module name."
  type        = string
  default     = "alicloud-rey-test"
}
variable "name_instance5" {
  description = "The specification of module name."
  type        = string
  default     = "alicloud-rey-test"
}
variable "name_instance6" {
  description = "The specification of module name."
  type        = string
  default     = "alicloud-rey-test"
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = "alicloud-rey-test-description"
}

variable "available_disk_category" {
  description = "The specification of available disk category."
  type        = string
  default     = "cloud_efficiency"
}


variable "vpc_cidr_block" {
  description = "The specification of the vpc cidr block."
  type        = string
  default     = "10.10.1.0/24"
}

variable "vswitch_cidr_block" {
  description = "The specification of the vswitch cidr block."
  type        = string
  default     = "10.10.1.0/24"
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = "ecs.n4.large"
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = "system_disk"
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = "system_disk_description"
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = "ubuntu_18_04_64_20G_alibase_20190624.vhd"
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

variable "ecs_size" {
  description = "The specification of the ecs size."
  type        = number
  default     = 1200
}

variable "category" {
  description = "The specification of the category."
  type        = string
  default     = "cloud_efficiency"
}

variable "security_ips" {
  description = "The specification of the security ips."
  type        = list(string)
  default     = ["127.0.0.1"]
}


variable "instance_storage" {
  description = "The specification of the instance storage."
  type        = string
  default     = "30"
}

variable "instance_charge_type" {
  description = "The specification of the instance charge type."
  type        = string
  default     = "Postpaid"
}

variable "monitoring_period" {
  description = "The specification of the monitoring period."
  type        = string
  default     = "60"
}

variable "vpc_description" {
  description = "The vpc description used to launch a new vpc."
  type        = string
  default     = "A new VPC created by alicloud-rey-test"
}