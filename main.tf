terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }

  }
}

provider "aws" {
  region  = var.region
  profile = "default"
}

resource "aws_instance" "ec2-week12" {
    ami = var.ami
    #vpc_security_group_ids = [aws_security_group.sg-demo.id]
    instance_type = var.instance_type
    #key_name = "ec2-week12"
    #subnet_id = aws_subnet.public_subnet1.id
    #user_data = file("setup.sh")
    tags={
        Name = var.name
        env = "Dev"
    }

}
