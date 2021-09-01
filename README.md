# alicloud-ecs
This is an experimental terraform module for creating 6 different alicloud ecs instance

## Usage
Example usage (locally)
```hcl
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
```
## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.
  
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | = 1.132.0 |

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
