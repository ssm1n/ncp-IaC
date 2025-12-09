output "vpc_no" {
  value = ncloud_vpc.this.vpc_no
}

output "private_subnet_no" {
  value = ncloud_subnet.private.id
}
