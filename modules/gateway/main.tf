/* se crea el gateway para poder dar salida a internet si es necesario , para este ejercicio no fue requerido , el nombre se deja definido por defecto */


resource "aws_internet_gateway" "mainly_gateway" {
    vpc_id = var.mainly_vpc_id

    tags = {
        Name = "Gateway_desafio_tf"
    }
}