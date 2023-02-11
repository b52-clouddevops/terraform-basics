# creates ec2 instance
resource "aws_instance" "my-ec2" {
  ami                     = "ami-0e3aeafe193bbdd4a"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [var.sg]
}

# Before you use the variable from the root module, ensure you declare an empty variable.
variable "sg" {}


output "public_ip_address" {
    value = aws_instance.my-ec2.public_ip
}