output "ec2_details" {
    value = aws_instance.desafio_tf_instance[*].id
  
}