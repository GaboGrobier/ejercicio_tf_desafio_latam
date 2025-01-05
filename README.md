
# Desafío Terraform: Infraestructura en AWS

Este desafío tiene como objetivo la creación de una infraestructura en AWS utilizando Terraform. En este proyecto se configura una VPC, subredes, instancias EC2, y Security Groups, siguiendo las mejores prácticas y aprovechando las características de Terraform como el uso de `count` para la creación dinámica de recursos.

## Descripción del Proyecto

El desafío consiste en la creación de una infraestructura completa en AWS utilizando Terraform. Los recursos creados incluyen:

- Una **VPC** con un bloque CIDR `192.168.0.0/16`.
- Al menos **2 subredes** dentro de la VPC.
- **2 instancias EC2** creadas dinámicamente en las subredes.
- **Un Security Group** que permite el acceso a través de los puertos 22 (SSH), 80 (HTTP) y 443 (HTTPS).
- Variables configurables para personalizar la infraestructura.

### Objetivos

- Crear una VPC y subredes.
- Crear dos instancias EC2 utilizando el parámetro `count`.
- Crear y asociar un Security Group con las instancias EC2.
- Utilizar bloques `locals` y `data` para gestionar recursos y obtener datos dinámicamente.
- Definir salidas para mostrar los ID de las instancias EC2 y la URL del Security Group.

## Archivos de Terraform

El proyecto contiene los siguientes archivos de configuración de Terraform:

- **main.tf**: Contiene la configuración principal de la infraestructura, incluyendo la VPC, subredes, instancias EC2 y asociación del Security Group.
- **variables.tf**: Define las variables necesarias para la infraestructura, como la región de AWS, CIDR de la VPC, y el tipo de instancia EC2.
- **provider.tf**: Configura el proveedor de AWS.
- **outputs.tf**: Define las salidas de la infraestructura, mostrando el ID de las instancias EC2 y la URL del Security Group.
- **terraform.tfvars**: Contiene los valores específicos para las variables.

## Requerimientos

Antes de empezar, asegúrate de tener:

- Una cuenta de AWS activa.
- Terraform instalado en tu máquina.

## Estructura de Archivos

La estructura del proyecto es la siguiente:

```
.
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── modules/
    ├── provider/
    ├── vpc/
    ├── subnet/
    ├── gateway/
    ├── sg/
    └── ec2/
```

### Módulos

Este proyecto utiliza módulos para organizar la configuración de Terraform. A continuación se detallan los módulos utilizados:

- **provider**: Configura el proveedor de AWS.
- **vpc**: Define la VPC y sus características.
- **subnet**: Crea las subredes dentro de la VPC.
- **gateway**: Configura el gateway para la VPC.
- **sg**: Define el Security Group y sus reglas.
- **ec2**: Crea las instancias EC2 dentro de las subredes.

## Instrucciones para Ejecutar el Proyecto

Sigue estos pasos para ejecutar el proyecto y crear la infraestructura en AWS:

### 1. Inicializar el Proyecto

Primero, inicializa el proyecto con Terraform:

```bash
terraform init
```

### 2. Verificar los Cambios

Revisa el plan de ejecución para ver qué cambios se realizarán:

```bash
terraform plan
```

### 3. Aplicar la Infraestructura

Aplica los cambios y crea la infraestructura en AWS:

```bash
terraform apply
```

Cuando se te pida, confirma la ejecución escribiendo `yes`.

### 4. Ver las Salidas

Una vez que la infraestructura haya sido creada, puedes ver las salidas definidas en el archivo `outputs.tf`:

```bash
terraform output
```

Esto mostrará el ID de las instancias EC2 y la URL del Security Group.

### 5. Destruir la Infraestructura

Si deseas destruir la infraestructura creada, puedes hacerlo con el siguiente comando:

```bash
terraform destroy
```

Cuando se te pida, confirma la destrucción escribiendo `yes`.

## Variables Configurables

El proyecto está configurado para permitir la personalización de los siguientes parámetros a través de las variables:

- **AWS region**: Región de AWS donde se desplegarán los recursos.
- **CIDR block para la VPC**: Rango de direcciones IP para la VPC.
- **Tamaño de la instancia EC2**: Tipo de instancia EC2 que se utilizará.

Estas variables están definidas en el archivo `variables.tf` y puedes modificarlas en el archivo `terraform.tfvars` para personalizar la infraestructura.

## Ejemplo de `terraform.tfvars`

```hcl
region        = "us-west-2"
cidr_block_vpc = "192.168.0.0/16"
cidr_block_subnet = "192.168.1.0/24"
instance_type = "t2.micro"
```

## Resultados Esperados

Al finalizar la ejecución de Terraform, los siguientes recursos serán creados en AWS:

- **VPC** con el bloque CIDR `192.168.0.0/16`.
- **2 Subredes** en la VPC, con bloques CIDR `192.168.1.0/24` y `192.168.2.0/24`.
- **2 instancias EC2** de Amazon Linux 2, una en cada subred.
- **Security Group** que permite acceso SSH (22), HTTP (80), y HTTPS (443).

Además, las salidas de Terraform mostrarán el ID de las instancias EC2 y la URL del Security Group.

## Documentación del Proyecto

Este proyecto automatiza la creación de una infraestructura en la nube utilizando Terraform, proporcionando una manera fácil de gestionar recursos en AWS. Los módulos utilizados permiten la creación de recursos de manera modular y reutilizable, siguiendo las mejores prácticas para la gestión de infraestructuras.



## Conclusión

Este desafío te proporciona una experiencia práctica en la creación y gestión de infraestructuras en la nube utilizando Terraform, lo cual es esencial para la automatización y escalabilidad de recursos en AWS. Siguiendo los pasos descritos, podrás implementar y destruir infraestructuras de manera eficiente.
