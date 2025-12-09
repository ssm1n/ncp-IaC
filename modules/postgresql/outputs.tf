output "endpoint" {
  value = "${ncloud_postgresql.postgresql.postgresql_server_list[0].private_domain}:${ncloud_postgresql.postgresql.port}"
}

output "instance_no" {
  value = ncloud_postgresql.postgresql.id
}
