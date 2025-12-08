resource "ncloud_vpc" "this" {
  name            = var.vpc_name
  ipv4_cidr_block = var.vpc_cidr
}

resource "ncloud_subnet" "private" {
  vpc_no         = ncloud_vpc.this.id
  subnet         = var.private_subnet_cidr
  zone           = var.zone
  network_acl_no = ncloud_vpc.this.default_network_acl_no

  subnet_type = "PRIVATE"
  name        = var.private_subnet_name
  usage_type  = "GEN" # 일반 용도
}