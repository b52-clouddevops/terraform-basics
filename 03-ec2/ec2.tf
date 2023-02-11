provider "aws" {
  region = "us-east-1"
}

# creates ec2 instance
resource "aws_instance" "my-ec2" {
  ami                     = "ami-0e3aeafe193bbdd4a"
  instance_type           = "t2.micro"

  tags = {
    Name = "Terraform-Server"
  }
}