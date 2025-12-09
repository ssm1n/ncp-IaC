output "endpoint" {
  value = ncloud_mongodb.mongodb.mongodb_server_list[0].private_domain
}

output "instance_no" {
  value = ncloud_mongodb.mongodb.id
}
