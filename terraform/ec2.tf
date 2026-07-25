resource "aws_instance" "jenkins" {

  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.jenkins_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "jenkins-server"
  }
}

resource "aws_instance" "kubernetes" {

  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.k8s_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "kubernetes-server"
  }
}