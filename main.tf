provider "aws" {
  region = "us-west-1"
}


module "vpc" {
  source     = "./module/vpc"
  vpc_cidr   = "10.0.0.0/16"
}

module "subnet" {
  source            = "./module/subnet"
  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = "10.0.1.0/24"
  availability_zone = "us-west-1a"
}

