output "endpoint" {
  value = "${ncloud_mysql.mysql.mysql_server_list[0].private_domain}:${ncloud_mysql.mysql.port}"
}

output "instance_no" {
  value = ncloud_mysql.mysql.id
}
