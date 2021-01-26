variable "vpc_id" {
    type = string
    description = "VPC Id"
}

variable "cidr_block" {
    type = string
    description = "Subnet cidr block"
}

variable "devops-instance_name" {
    type = string
    description = "Name of ec2 instance"
}

variable "ami" {
    type = string
    description = "AMI to use on ec2 instance"
}

variable "instance_type" {
    type = string
    description = "Instance type"
}

variable "key_name" {
    type = string
    description = "key pair for ec2 instance"
}




