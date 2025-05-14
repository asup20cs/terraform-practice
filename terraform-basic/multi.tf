#creating multiple instances using terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "instance_tf" {
  #add count value to create the number of instances
  count         = 3
  ami           = "ami-05803413c51f242b7"
  instance_type = "t2.micro"

  #adding tags to the created instances
  tags = {
    #this will generate names like demoinstance-1, demoinstance-2 etc
    Name = "instance-${count.index}"

  }
}
