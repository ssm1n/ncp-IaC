module "vpc" {
  source = "./modules/vpc"

  providers = {
    ncloud = ncloud
  }
}

module "mysql" {
  source = "./modules/mysql"

  providers = {
    ncloud = ncloud
  }

  subnet_no     = module.vpc.private_subnet_no
  vpc_no        = module.vpc.vpc_no

  user_name     = var.user_name
  user_password = var.user_password
}

module "mssql" {
  source       = "./modules/mssql"

  providers = {
    ncloud = ncloud
  }

  vpc_no        = module.vpc.vpc_no
  subnet_no     = module.vpc.private_subnet_no
  user_name     = var.user_name
  user_password = var.user_password
}

module "mongodb" {
  source       = "./modules/mongodb"

  providers = {
    ncloud = ncloud
  }

  vpc_no             = module.vpc.vpc_no
  subnet_no          = module.vpc.private_subnet_no

  user_name          = var.user_name
  user_password      = var.user_password
}

module "redis" {
  source       = "./modules/redis"

  providers = {
    ncloud = ncloud
  }

  vpc_no             = module.vpc.vpc_no
  subnet_no          = module.vpc.private_subnet_no
}


module "postgresql" {
  source       = "./modules/postgresql"

  providers = {
    ncloud = ncloud
  }

  vpc_no             = module.vpc.vpc_no
  subnet_no          = module.vpc.private_subnet_no

  user_name          = var.user_name
  user_password      = var.user_password
}
