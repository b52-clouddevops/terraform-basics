provider "aws" {
  region = "us-east-1"
}

# creates ec2 instance
resource "aws_instance" "my-ec2" {
  count                   =  lenght(var.envs)              # length gives the length of the variable
  ami                     = "ami-0e3aeafe193bbdd4a"
  instance_type           = "t2.micro"

  tags = {
      Name = var.envs[count.index]
  }
}


output "public_ip" {
    value = aws_instance.my-ec2.*.public_ip
}

variable "envs" {
    default = ["dev", "qa", "stage", "prod"]
}