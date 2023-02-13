# Creates Security Group
resource "aws_security_group" "allow_all" {
  name        = "allow_${var.COMPONENT}"
  description = "Allow All inbound traffic"

  ingress {
    description = "SSH from Public"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # [] represent's list. 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-${var.COMPONENT}"
  }
}