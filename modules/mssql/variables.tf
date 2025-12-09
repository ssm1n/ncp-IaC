variable "service_name" {
  type    = string
  default = "tf-mssql"
}

variable "user_name" {
  type    = string
  default = "nb61276"
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

variable "is_ha" {
  type    = bool
  default = true
}
