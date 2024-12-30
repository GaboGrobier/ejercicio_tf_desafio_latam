/* Construccion del Ec2 la cual se declaran variables que solo estan preparadas para almacenar informacion , estos datos 
seran recibidos despues desde el main correspondiente 

*/

resource "aws_instance" "desafio_tf_instance" {
    ami = var.ami_ec2
    count = var.ec2_count
    instance_type = var.instance_type
    subnet_id = var.mainly_subnet_id[count.index]
    key_name = var.key_name_ec2
    tags = {
      Name = "${var.instance_name}${count.index}"
    }
    associate_public_ip_address = true
    security_groups = [var.security_gruop]
  
}