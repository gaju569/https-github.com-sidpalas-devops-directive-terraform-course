terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-007855ac798b5175e" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
}
