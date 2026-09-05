data "aws_ami" "ami_id01" {
    most_recent = true
    owners = ["amazon"]
    filter {
        name = "name"
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id_will_come" {
    value = data.aws_ami.ami_id01.id
}