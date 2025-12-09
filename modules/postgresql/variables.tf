variable "service_name" {
  type    = string
  default = "tf-pg"
}

variable "server_name_prefix" {
  type    = string
  default = "tf-pg"
}

variable "user_name" {
  type    = string
}

variable "user_password" {
  type      = string
  sensitive = true
}

variable "database_name" {
  type    = string
  default = "tfpgdb"
}

variable "client_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "vpc_no" {
  type = string
}

variable "subnet_no" {
  type = string
}
