# https://registry.terraform.io/providers/NaverCloudPlatform/ncloud/latest/docs/resources/mongodb

terraform {
  required_providers {
    ncloud = {
      source = "navercloudplatform/ncloud"
    }
  }
}

resource "ncloud_mongodb" "mongodb" {
  # --필수 필드--
  vpc_no             = var.vpc_no
  subnet_no          = var.subnet_no

  service_name       = var.service_name
  server_name_prefix = var.server_name_prefix

  user_name          = var.user_name
  user_password      = var.user_password

  cluster_type_code  = "STAND_ALONE"   

  # --선택 필드 --
  # --- 이미지/버전 관련 ---
  # image_product_code  
  # engine_version_code  

  # --- 서버 스펙(product_code) 관련 ---
  # member_product_code 
  # arbiter_product_code
  # mongos_product_code  
  # config_product_code 

  # --- 클러스터 수량 설정 ---
  # shard_count          
  # member_server_count  
  # arbiter_server_count 
  # mongos_server_count 
  # config_server_count  

  # --- 백업 ---
  # backup_file_retention_period
  # backup_time              

  # --- 스토리지/압축 ---
  # data_storage_type
  # compress_code    

  # --- 포트 설정 ---
  # member_port 
  # mongos_port 
  # config_port 

  # --- Ect ---
  # description 
}
