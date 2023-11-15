output "public_ip" {
  value = aws_instance.ec2-week12.public_ip
}
output "public_dns" {
  value = aws_instance.ec2-week12.public_dns
}
output "instance_id" {
  value = aws_instance.ec2-week12.id
}
