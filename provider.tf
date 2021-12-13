#Current modules version

terraform {
  required_version = ">= 0.13"
}

terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.132.0"
    }
  }
}
