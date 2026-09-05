resource "aws_instance" "new instance" {
    vpc_security_group_ids = [aws_security_group.mysg.id]
    key_name = aws_key_pair.keypair.key_name
    ami = data.aws_ami.ami_id01.id
    availability_zone = "us-east-1a"
    instance_type = "t3.micro"
}