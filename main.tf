

module "provider" {
    source = "./modules/provider"
    region = local.region
}

module "vpc" {
    source = "./modules/vpc"
    name_vpc = local.vpc_name
  
}

module "subnet" {
    source = "./modules/subnet"
    cidr_block = local.cidr_subnet
    vpc_id_mainly = module.vpc.vpc_mainly_id
    availability_zone = "${local.region}a"
}

module "gateway" {
    source = "./modules/gateway"
    mainly_vpc_id = module.vpc.vpc_mainly_id
  
}
module "security_group" {
    source = "./modules/sg"
    mainly_vpc_id = module.vpc.vpc_mainly_id
  
}

module "ec2" {
    source = "./modules/ec2"
    security_groups = module.security_group.sg_id
    ami_ec2 = data.aws_ami.amazon_linux.id
    ec2_count = local.count_ec2
    mainly_subnet_id = module.subnet.main_subnet_id
    security_gruop = module.security_group.sg_id
    key_name_ec2 = "desafioLatam"
    instance_name = local.instance_name

  
}