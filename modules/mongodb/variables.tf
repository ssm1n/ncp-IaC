variable "service_name" {
  type    = string
  default = "tf-mongodb"
}

variable "server_name_prefix" {
  type    = string
  default = "tf-mongo"
}

variable "user_name" {
  type    = string
}

variable "user_password" {
  type      = string
  sensitive = true
}

variable "vpc_no" {
  type = string
}

variable "subnet_no" {
  type = string
}
