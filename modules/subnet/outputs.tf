output "main_subnet_id" {
    value = aws_subnet.mainly_subnet[*].id
  
}