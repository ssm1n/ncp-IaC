# MySQL 상품 정보 조회
resource "ncloud_mysql" "mysql" {
  subnet_no = ncloud_subnet.private.id

  # 필수 필드
  service_name       = "tf-mysql"
  server_name_prefix = "${var.db_service_prefix}-mysql"
  database_name      = "tf-mysql"
  host_ip            = "%"

  user_name     = "nb61276"
  user_password = var.db_admin_password

  # 선택 필드
  is_ha = true
}
