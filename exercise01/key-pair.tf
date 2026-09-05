resource "aws_key_pair" "ec2" {
  key_name   = "ec2-key-pair"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINepylgJwE/ma6I783Gk6gUOPBq3NnduB3K72DRqfSEN nikhi@Nikhil"
}