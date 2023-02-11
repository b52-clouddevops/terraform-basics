data "aws_ami" "lab-image" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["self"]
}

