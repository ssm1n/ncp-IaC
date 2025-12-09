# https://registry.terraform.io/providers/NaverCloudPlatform/ncloud/latest/docs/resources/mysql

terraform {
  required_providers {
    ncloud = {
      source = "navercloudplatform/ncloud"
    }
  }
}

resource "ncloud_mysql" "mysql" {
  # -- 필수 필드 --
  subnet_no = var.subnet_no
  service_name  = var.service_name
  server_name_prefix = var.server_name_prefix
  user_name = var.user_name
  user_password = var.user_password
  host_ip = var.host_ip          
  database_name = var.database_name

  # -- 선택 필드 --
  is_ha = true
  # image_product_code = 
  # product_code = 
  # engine_version_code = 
  # data_storage_type = 
  # is_multi_zone = 
  # is_storage_encryption = 
  # is_backup = 
  # backup_file_retention_period = 
  # backup_time = 
  # is_automatic_backup = 
  # port = 
  # standby_master_subnet_no =
}
