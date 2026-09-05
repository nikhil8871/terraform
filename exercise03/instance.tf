resource "aws_instance" "ec2" {
  ami           = var.ami[var.region]
  instance_type = "t3.micro"
  key_name      = aws_key_pair.ec2.key_name
  #or
  # key_name = "ec2-key-pair"
  vpc_security_group_ids = [aws_security_group.sg.id]
  availability_zone      = var.zone
}