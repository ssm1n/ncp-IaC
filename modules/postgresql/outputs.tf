output "endpoint" {
  value = "${ncloud_postgresql.postgresql.database_name}:${ncloud_postgresql.postgresql.port}"
}

output "instance_no" {
  value = ncloud_postgresql.postgresql.id
}
