output "endpoint" {
  value = "${ncloud_mssql.mssql.id}:${ncloud_mssql.mssql.port}"
}

output "instance_no" {
  value = ncloud_mssql.mssql.id
}
