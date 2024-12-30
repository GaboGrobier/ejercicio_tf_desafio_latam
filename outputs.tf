/* se exponene los valores requeridos dentro del trabajo */

output "ec2" {
    value = module.ec2.ec2_details
}
output "vpc" {
  value = "https://console.aws.amazon.com/ec2/v2/home?region=${local.region}#SecurityGroups:groupId=${module.security_group.sg_id}"
}

