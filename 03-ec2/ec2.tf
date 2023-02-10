provider "aws" {
  region = "us-east-1"
}

# creates ec2 instance
resource "aws_instance" "this" {
  ami                     = "ami-0c1d144c8fdd8d690"
  instance_type           = "t3.micro"

  tags = {
    Name = "Terraform-Server"
  }

}