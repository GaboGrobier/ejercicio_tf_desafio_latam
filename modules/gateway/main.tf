resource "aws_internet_gateway" "mainly_gateway" {
    vpc_id = var.mainly_vpc_id

    tags = {
        Name = "Gateway_desafio_tf"
    }
}