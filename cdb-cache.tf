# https://registry.terraform.io/providers/NaverCloudPlatform/ncloud/latest/docs/resources/redis
resource "ncloud_redis_config_group" "redis_config" {
  name          = "tf-cache-config"
  redis_version = "7.2.11-simple"
  description   = "Terraform cache config"
}

resource "ncloud_redis" "cache" {
  # -- 필수 필드 --
  service_name       = "tf-redis"
  server_name_prefix = "tf-redis"
  vpc_no             = ncloud_vpc.this.vpc_no
  subnet_no          = ncloud_subnet.private.id
  config_group_no    = ncloud_redis_config_group.redis_config.id
  mode               = "SIMPLE"

  # -- 선택 필드 --
  is_ha = false
  # user_name (gov에서만)
  # user_password (gov에서만)
  # image_product_code
  # product_code
  # engine_version_code
  # shard_count      
  # shard_copy_count  
  # is_backup 
  # backup_file_retention_period 
  # is_automatic_backup
  # backup_time 
  # port 
}
