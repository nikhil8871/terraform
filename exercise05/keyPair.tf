resource "aws_key_pair" "my_sg" {
    key_name = "my_sg"
    public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHTorE40HrxL7rpl0HQz1UraVCCv1IBq7SZqHDjCj8ZJ nikhi@Nikhil"
}