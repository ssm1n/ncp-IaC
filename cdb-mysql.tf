# https://registry.terraform.io/providers/NaverCloudPlatform/ncloud/latest/docs/resources/mysql
resource "ncloud_mysql" "mysql" {
  # -- 필수 필드 --
  subnet_no = ncloud_subnet.private.id
  service_name       = "tf-mysql"
  server_name_prefix = "${var.db_service_prefix}-mysql"
  database_name      = "tf-mysql"
  host_ip            = "%"
  user_name     = "nb61276"
  user_password = var.db_admin_password

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
