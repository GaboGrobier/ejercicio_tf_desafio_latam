resource "aws_subnet" "mainly_subnet" {
    count = length(var.cidr_block)
    vpc_id = var.vpc_id_mainly
    cidr_block = var.cidr_block[count.index]
    availability_zone = var.availability_zone
    map_public_ip_on_launch = true
  
}