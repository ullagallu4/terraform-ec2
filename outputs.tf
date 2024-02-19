# output "ssh_command" {
#   value = <<-EOT
#   ssh -i "ud.pem" ubuntu@${aws_instance.web.public_dns}
#   EOT
# }

# output "public_ip" {
#   value = aws_instance.web.public_ip
# }
