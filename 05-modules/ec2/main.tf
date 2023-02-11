# creates ec2 instance
resource "aws_instance" "my-ec2" {
  ami                     = data.lab-image.id
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [var.sg]
}

# Before you use the variable from the root module, ensure you declare an empty variable.
variable "sg" {}


output "public_ip_address" {
    value = aws_instance.my-ec2.public_ip
}


# Patching of your EC2 & AMI has to be taken care as a part of the monthly maintenance.

# How do we patch the AMI ???
### Answer : Make an instance out of that AMI, update the server with latest pathces; Then , make AMI out of it with the same name and then deresigter the old AMI.
#### Airlines-Proj-X-1-Feb ;  Airlines-Proj-X-2-Mar ;