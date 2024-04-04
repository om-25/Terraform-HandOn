variable "vpc_id" {
  description = "ID of the VPC in which to create the subnet"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
}