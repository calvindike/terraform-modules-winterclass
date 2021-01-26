terraform {
  required_version = ">= 0.14"
}


###### Subnets (Private and Public) ######

resource "aws_subnet" "devops-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
}

###### EC2 ######

resource "aws_instance" "devops-instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.devops-subnet.id

  tags = {
    Name = "${var.devops-instance_name} devops-instance"
  }
}
