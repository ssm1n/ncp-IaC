output "endpoint" {
  value = "${ncloud_mysql.mysql.id}:${ncloud_mysql.mysql.port}"
}

output "instance_no" {
  value = ncloud_mysql.mysql.id
}
