resource "aws_security_group" "crypto" {
  name = var.prefix
  tags = {
    Name = var.prefix
  }
  description = "${var.prefix} SG"
  egress {
    from_port   = 0
    to_port     = 65535 # All outbound traffic
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 4433
    to_port     = 4433 # All outbound traffic
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

