# Creates EC2 Instance 
resource "aws_instance" "app" {
  ami                        = "ami-007ddc8fe062d29ae"
  instance_type              = "t2.micro"
  vpc_security_group_ids     = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

output "private_dns" {
 value   = aws_instance.app.private_dns
}

