terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "instance_tf" {
  ami           = "ami-05803413c51f242b7"
  instance_type = "t2.micro"
}
