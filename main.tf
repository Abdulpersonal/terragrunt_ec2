module "ec2" {
source = "./EC2"
vpc-sg=module.sg.id
}

module "sg" {
  source="./Securitygroups"
}
