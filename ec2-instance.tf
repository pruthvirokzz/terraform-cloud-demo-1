resource "aws_instance" "My-Var-EC2" {
  ami                    = data.aws_ami.latest-admi.id
  instance_type          = var.ec2_instance_type
  key_name               = "TerraformKeyPair"
  user_data              = file("apache-install.sh")
  count                  = terraform.workspace == "default" ? 2 : 1
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "vm-${terraform.workspace}-${count.index}"
    target = "target-test1"
  }
}
