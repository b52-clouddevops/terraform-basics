# creates ec2 spot instance
resource "aws_spot_instance_request" "my_spot_server" {
  ami                     = data.aws_ami.lab-image.image_id
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [aws_security_group.allow_all.id]

  wait_for_fulfillment  = true               # terraform job will only be completed if the reques is fulfilled. If not, tf wails for 10 mins and timesout.

  tags = {
    Name = var.COMPONENT
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip         # self. will only work if it's inside the resource ; If not, we need to use aws_instance.my-ec2.public_ip
      }

      inline = [
          "ansible-pull -U https://github.com/b52-clouddevops/ansible.git -e COMPONENT=frontend -e ENV=dev -e APP_VERSION=${var.APP_VERSION} -e ENV=dev robot-pull.yml"
        ]
    }
}





# resource "aws_instance" "my-ec2" {
#   ami                     = data.aws_ami.lab-image.image_id
#   instance_type           = "t2.micro"
#   vpc_security_group_ids  = [var.sg]

#   provisioner "remote-exec" {
#     connection {
#       type     = "ssh"
#       user     = "centos"
#       password = "DevOps321"
#       host     = self.public_ip         # self. will only work if it's inside the resource ; If not, we need to use aws_instance.my-ec2.public_ip
#       }

#       inline = [
#           "ansible-pull -U https://github.com/b52-clouddevops/ansible.git -e COMPONENT=mongodb -e ENV=dev robot-pull.yml"
#         ]
#     }
# }
