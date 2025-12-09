output "endpoint" {
  value = ncloud_mongodb.mongodb.service_name
}

output "instance_no" {
  value = ncloud_mongodb.mongodb.id
}
