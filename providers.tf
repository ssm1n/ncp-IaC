terraform {
  required_version = ">= 1.3.0"

  required_providers {
    ncloud = {
      source  = "navercloudplatform/ncloud"
      version = ">= 3.2.0"
    }
  }
}

provider "ncloud" {
  region      = var.region
  site        = var.site
  support_vpc = true

  access_key = var.ncloud_access_key
  secret_key = var.ncloud_secret_key
}

