module "ec2" {
  source = "./ec2"
  sg     = module.sg.sg-id                  # taking the output of sg module as input to the ec2 module
}

module "sg" {
  source = "./sg"
}

# output "server_public_ip" {
#     value = aws_instance.my-ec2.public_ip
# }