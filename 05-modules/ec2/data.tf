data "aws_ami" "lab-image" {
  most_recent      = true
  name_regex       = "b52-ansible-dev-20Jan2023"
  owners           = ["self"]
}

