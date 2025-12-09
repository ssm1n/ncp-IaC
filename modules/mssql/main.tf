# https://registry.terraform.io/providers/NaverCloudPlatform/ncloud/latest/docs/resources/mssql

terraform {
  required_providers {
    ncloud = {
      source = "navercloudplatform/ncloud"
    }
  }
}

resource "ncloud_mssql" "mssql" {
  # -- 필수 필드 --
  subnet_no     = var.subnet_no
  service_name  = var.service_name
  user_name     = var.user_name
  user_password = var.user_password
  is_ha         = true

  # -- 선택 필드 --
  # config_group_no = 
  # image_product_code = 
  # product_code = 
  # data_storage_type = 
  # backup_file_retention_period = 
  # backup_time = 
  # is_automatic_backup = 
  # port = 
  # character_set_name = 
}
