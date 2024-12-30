variable "vpc_id_mainly" {
    type = string
    description = "Variable para almacenar el id de la vpc "
}
variable "cidr_block" {
    type = list(string)
    description = "Variable para poder almacenar  el bloque cidr de la vpc "
 
  
} 
variable "availability_zone" {
    type = string
    description = "Variable para almacenar la zona de disponibilidad de la infraestructura "
  
}