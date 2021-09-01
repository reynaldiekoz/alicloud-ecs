output "this_vpc_id" {
  value = alicloud_vpc.default.id
}

output "this_vswitch_id" {
  value = alicloud_vswitch.default.id
}

output "this_security_group_id" {
  value = alicloud_security_group.default.id
}

output "this_ecs_id1" {
  value = alicloud_instance.default1.id
}

output "this_ecs_id2" {
  value = alicloud_instance.default2.id

}
output "this_ecs_id3" {
  value = alicloud_instance.default3.id

}
output "this_ecs_id4" {
  value = alicloud_instance.default4.id

}
output "this_ecs_id5" {
  value = alicloud_instance.default5.id

}
output "this_ecs_id6" {
  value = alicloud_instance.default6.id
}



output "this_zone_id" {
  value = data.alicloud_zones.default.zones[0].id
}
