/* 
Se expondra hacia el main todos los id de las instancias ec2 construidas 

*/

output "ec2_details" {
    value = aws_instance.desafio_tf_instance[*].id
  
}