variable "vpc_name" {
  type        = string
  default     = "tf-vpc"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet_name" {
  type        = string
  default     = "tf-private-subnet"
}

variable "private_subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
}

variable "zone" {
  type        = string
  default     = "KR-1"
}
