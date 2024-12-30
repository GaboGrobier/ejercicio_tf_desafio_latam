/* se expone el id del servicio con el fin de poder utilizarlo en el main desde la raiz */
output "sg_id" {
    value = aws_security_group.mainly_security_group.id
  
}
