resource "aws_security_group" "mysg"{
    name        = "mysg"
    description = "My security group"
    }

resource "aws_vpc_security_group_ingress_rule" "allow_ssh"{
    security_group_id = aws_security_group.mysg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
}


resource "aws_vpc_security_group_ingress_rule" "allow http" {
    security_group_id = aws_security_group.mysg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = 80
    to_port = 80
    ip_protocol = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "allow_https" {
    security_group_id = aws_security_group.mysg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = 443
    to_port = 443
    ip_protocol = "tcp"
}
