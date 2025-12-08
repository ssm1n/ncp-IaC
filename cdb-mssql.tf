resource "ncloud_mssql" "mssql" {
  # --필수 필드--
  subnet_no = ncloud_subnet.private.id
  service_name = "tf-mssql"
  user_name = "nb61276"
  user_password = var.db_admin_password
  is_ha = true

  # --선택 필드--
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
