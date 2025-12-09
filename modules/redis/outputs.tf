output "endpoint" {
  value = "${ncloud_redis.redis.redis_server_list[0].private_domain}:${ncloud_redis.redis.port}"
}

output "config_group_no" {
  value = ncloud_redis_config_group.this.id
}

output "instance_no" {
  value = ncloud_redis.redis.id
}
