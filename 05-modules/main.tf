module "ec2" {
  source = "./ec2"
}

module "sg" {
  source = "./sg"
}

output "server_public_ip" {
    value = aws_instance.my-ec2.public_ip
}