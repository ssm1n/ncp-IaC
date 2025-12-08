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

# DB 공통 prefix

variable "db_service_prefix" {
  description = "서비스 이름 prefix"
  type        = string
  default     = "test"
}

variable "db_admin_password" {
  description = "테스트용 공통 DB admin 패스워드 (우선 DB 모두 통일)"
  type        = string
  sensitive   = true
}