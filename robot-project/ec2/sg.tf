# Creates Security Group
resource "aws_security_group" "allows_all" {
  name        = "allows_${var.COMPONENT}"
  description = "Allows All inbound traffic"

  ingress {
    description = "SSH from Public"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]   # [] represent's list. 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allows-${var.COMPONENT}"
  }
}