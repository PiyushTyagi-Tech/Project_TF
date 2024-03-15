terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
}

resource "aws_instance" "web-server" {
  ami           = "ami-0f5daaa3a7fb3378b"
  instance_type = "t2.micro"
  count         = 1 

  tags = {
    Name = "Web-Server"
  }
}