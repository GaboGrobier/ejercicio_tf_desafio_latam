locals {
  vpc_name = "vpc_tf_desafio11"
  cidr_subnet = ["192.168.1.0/24","192.168.2.0/24"]
  count_ec2 = 2
  instance_name = "desafio_latam_ejercicio_tf_n11-"
  region = "us-east-1"
}