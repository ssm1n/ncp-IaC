# https://registry.terraform.io/providers/NaverCloudPlatform/ncloud/latest/docs/resources/redis

terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
    }
  }
}

resource "ncloud_redis_config_group" "this" {
  name          = "${var.service_name}-config"
  redis_version = var.redis_version
  description   = "Redis config group for ${var.service_name}"
}

resource "ncloud_redis" "redis" {
  # -- 필수 필드 --
  service_name       = var.service_name
  server_name_prefix = var.server_name_prefix

  vpc_no             = var.vpc_no
  subnet_no          = var.subnet_no
  config_group_no    = ncloud_redis_config_group.this.id

  mode               = var.mode

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
