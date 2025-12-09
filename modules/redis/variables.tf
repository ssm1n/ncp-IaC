variable "service_name" {
  type    = string
  default = "tf-redis"
}

variable "server_name_prefix" {
  type    = string
  default = "tf-redis"
}

variable "vpc_no" {
  type = string
}

variable "subnet_no" {
  type = string
}

variable "mode" {
  type    = string
  default = "SIMPLE"   # SIMPLE | CLUSTER
}

variable "redis_version" {
  type    = string
  default = "7.0.13-simple"
}
