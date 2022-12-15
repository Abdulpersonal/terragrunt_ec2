resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name =var.key_name
  vpc_security_group_ids = [var.vpc-sg]
  user_data     = file("init-script.sh")
  tags = {
    Name = var.instance_name
  }
}