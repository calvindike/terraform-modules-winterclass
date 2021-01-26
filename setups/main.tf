###### Provider ######

provider "aws" {
  region      = "us-east-1"
}


###### VPC ######

resource "aws_vpc" "devops_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "devvpc"
  }
}

module "ModuleTestServer" {
  source = "../modules/ec2"
  vpc_id = aws_vpc.devops_vpc.id
  cidr_block = "10.0.0.0/16" 
  devops-instance_name = "Webserver"
  ami = "ami-0ae74ae9c43584639"
  instance_type = "t2.micro"
  key_name = "winter_key"
#  security_groups = [aws_security_group.devops_SG.id]
}
