resource "aws_security_group" "mysg" {
    name = "mysg"
    description = "Security group for EC2 instance"
}

resource "aws_vpc_security_group_ingress_rule" "mysg_ssh" {
    security_group_id = aws_security_group.mysg.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "tcp"
    from_port = 22
    to_port = 22
}

resource "aws_vpc_security_group_ingress_rule" "mysg_tcp" {
    security_group_id = aws_security_group.mysg.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "tcp"
    from_port = 80
    to_port = 80
}

resource "aws_vpc_security_group_egress_rule" "mysg" {
    security_group_id = aws_security_group.mysg.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "-1"
}