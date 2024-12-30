/* 
En el grupo de seguridad se dejo por defecto de acuerdo a lo requerido ya que viene dentro de las reglas de negocio 
de lo requerido por lo cual para que no fuese cambiado se difinio asi 
*/

resource "aws_security_group" "mainly_security_group" {
    name = "mainly_sg_tf"
    description = "mainly security group"
    vpc_id = var.mainly_vpc_id


    ingress  {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
        ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}
