# creates ec2 instance
resource "aws_instance" "my-ec2" {
  count                   = 3
  ami                     = "ami-0e3aeafe193bbdd4a"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = {
      Name = "Terraform-Server"
  }
}


# Prining the public ip address of the machine
# output "public_dns_output" {
#   value   =  aws_instance.my-ec2.public_dns
# }