resource "aws_security_group" "sg" {
  name        = "sg"
  description = "Security group for EC2 instance"
}

resource "aws_vpc_security_group_ingress_rule" "sg_ssh" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = "103.133.67.64/32"
  from_port         = 443
  to_port           = 443
  ip_protocol       = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "sg_tcp" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = "103.133.67.64/32"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}


resource "aws_vpc_security_group_egress_rule" "sg" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = "103.133.67.64/32"
  ip_protocol       = "-1" # from all the ports
}
