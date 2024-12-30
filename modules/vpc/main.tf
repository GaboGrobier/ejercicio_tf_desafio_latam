resource "aws_vpc" "mainly_vpc" {
    cidr_block = var.vpc_number
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      Name = var.name_vpc
    } 
}