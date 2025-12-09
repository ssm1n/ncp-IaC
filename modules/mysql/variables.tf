variable "service_name" {
  type        = string
  default     = "tf-mysql"
}

variable "server_name_prefix" {
  type        = string
  default     = "tf-mysql"
}

variable "database_name" {
  type        = string
  default     = "tf-mysql"
}

variable "host_ip" {
  type        = string
  default     = "%"
}

variable "user_name" {
  type        = string
}

variable "user_password" {
  type        = string
  sensitive   = true
}

variable "subnet_no" {
  type        = string
}

variable "vpc_no" {
  type        = string
}
