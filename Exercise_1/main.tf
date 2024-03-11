terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}

provider "aws" {
  access_key = " "
  secret_key = " "
  region  = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity_t2" {
  count                  = 4
  ami                    = "ami-0dfcb1ef8550277af"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0a6cc1694a28df40a"
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity_m4" {
  count                  = 2
  ami                    = "ami-0dfcb1ef8550277af"
  instance_type          = "m4.large"
  subnet_id              = "subnet-0a6cc1694a28df40a"
  tags = {
    Name = "Udacity M4"
  }
}
# terraform destroy -target aws_instance.udacity_m4