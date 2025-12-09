# NCP 공통 설정

variable "region" {
  description = "Ncloud region code"
  type        = string
  default     = "KR"
}

variable "zone" {
  description = "Ncloud zone code"
  type        = string
  default     = "KR-1"
}

variable "site" {
  description = "Ncloud site (public: 민간, fin: 금융, gov: 공공)"
  type        = string
  default     = "public"
}

variable "ncloud_access_key" {
  description = "Ncloud access key (환경변수로 주입 권장)"
  type        = string
  sensitive   = true
}

variable "ncloud_secret_key" {
  description = "Ncloud secret key (환경변수로 주입 권장)"
  type        = string
  sensitive   = true
}

# VPC / Subnet 설정

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "tf-cdb-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet_name" {
  description = "Private subnet name"
  type        = string
  default     = "tf-cdb-private-subnet"
}

variable "private_subnet_cidr" {
  description = "Private subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

# DB 공통 설정
variable "user_password" {
  type = string
  sensitive = true
}

variable "user_name" {
  type = string
}