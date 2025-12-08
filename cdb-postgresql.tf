# https://registry.terraform.io/providers/NaverCloudPlatform/ncloud/latest/docs/resources/postgresql
resource "ncloud_postgresql" "postgresql" {
  # -- 필수 필드 --
  service_name       = "tf-postgresql"     
  server_name_prefix = "tf-pg"              

  user_name          = "nb61276"            
  user_password      = var.db_admin_password 

  vpc_no             = ncloud_vpc.this.vpc_no
  subnet_no          = ncloud_subnet.private.id

  client_cidr        = "0.0.0.0/0"           
  database_name      = "tf-postgresql"              

  # -- 선택 필드 --
  # --- 이미지 / 버전 ---
  # image_product_code = 
  # product_code =      
  # engine_version_code = 

  # --- 스토리지 ---
  # data_storage_type_code =
  # storage_encryption =  

  # --- 고가용성(HA) ---
  # ha = true =      
  # multi_zone =
  # secondary_subnet_no =

  # --- 백업 ---
  # backup = true =             
  # backup_file_retention_period =
  # backup_time = 
  # automatic_backup = true   
  # backup_file_storage_count = 
  # backup_file_compression =      

  # --- 네트워크 ---
  # port = 

  # --- Ect ---
  # description = "Terraform PostgreSQL Instance"
}
