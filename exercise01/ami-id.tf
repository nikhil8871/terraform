data "aws_ami" "ami_id" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "newid" {
  description = "The AMI ID of the latest Ubuntu 20.04 image"
  value       = data.aws_ami.ami_id.id
}