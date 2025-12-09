output "endpoint" {
  value = "${ncloud_redis.redis.service_name}:${ncloud_redis.redis.port}"
}

output "config_group_no" {
  value = ncloud_redis_config_group.this.id
}

output "instance_no" {
  value = ncloud_redis.redis.id
}
