/* 
se expone el id del gateway ya que exponer las variables nos sirve para poder utilizarlas en desde el main en raiz 
*/

output "mainly_gatway_id" {
    value = aws_internet_gateway.mainly_gateway.id
  
}