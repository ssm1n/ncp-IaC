output "endpoint" {
  value = "${ncloud_mssql.mssql.mssql_server_list[0].private_domain}:${ncloud_mssql.mssql.port}"
}

output "instance_no" {
  value = ncloud_mssql.mssql.id
}
