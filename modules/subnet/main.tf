/* se construyen la cantidad de subnet definidas contando la cantidad de cidr declarados en el locals , es una lista esto debido a que es una infraestructura dinamica */

resource "aws_subnet" "mainly_subnet" {
    count = length(var.cidr_block) /* poder contar la cantidad de cidr declarados */
    vpc_id = var.vpc_id_mainly
    cidr_block = var.cidr_block[count.index] /* asociar el cidr de acuerdo al index */
    availability_zone = var.availability_zone
    map_public_ip_on_launch = true
  
}