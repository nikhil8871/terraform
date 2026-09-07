resource "aws_instance" "myinstance" {
    ami = var.instance_id_new[var.region]
    vpc_security_group_ids = [aws_security_group.mysg.id]
    key_name = aws_key_pair.my_sg.key_name
    availability_zone = var.zone[0]
    instance_type = "t3.micro"

#copy the web.sh file to the instance:
provisioner "file" {
  source      = "web.sh"
  destination = "/tmp/web.sh"
}

#connection to connect to the instance via SSH for copying the file and executing the script:
connection {
    type     = "ssh"
    user     = var.username
    private_key = file("new")  # Private key file
    host     = self.public_ip
  }


provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/web.sh",
    "sudo /tmp/web.sh"
  ]
}

provisioner "local-exec" {
  command = "echo ${self.public_ip} > ip.txt && echo ${self.private_ip} > private_ip.txt"
}
}

resource "aws_ec2_instance_state" "myinstance_state" {
  instance_id = aws_instance.myinstance.id
  state = "running"
}

output "webPublicIP" {
  value = aws_instance.myinstance.public_ip
}
output "webPrivateIP" {
  value = aws_instance.myinstance.private_ip
}