data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "web" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instance_type
  key_name        = var.key_name
  user_data       = file("${path.module}/script.sh")
  security_groups = var.security_groups
  subnet_id       = var.subnet_id
  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }
  provisioner "local-exec" {
    command = "echo ssh -i \"ud.pem\" ubuntu@${self.public_dns}"
  }
  tags = {
    Name = "Docker"
  }
}



