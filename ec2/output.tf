output "id" {
  description = "Ec2 ID of Web instance"
  value       = aws_instance.md_web_ec2.*.id
}

output "arn" {
  description = "ARN of the instance"
  value       = aws_instance.md_web_ec2.*.arn
}

output "availability_zone" {
  description = "availability zone of web instance"
  value       = aws_instance.md_web_ec2.*.availability_zone
}

output "key_name" {
  description = "key name of web instances"
  value       = aws_instance.md_web_ec2.*.key_name
}

output "public_dns" {
  description = "public DNS name assigned to the instance."
  value       = aws_instance.md_web_ec2.*.public_dns
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  # value       = aws_instance.md_web_ec2.*.public_ip
  value = [aws_autoscaling_group.md_asg.arn]
}

output "ipv6_addresses" {
  description = "List of assigned IPv6 addresses of instances"
  value       = aws_instance.md_web_ec2.*.ipv6_addresses
}

output "DNS_name_elb" {
  value = aws_elb.md-first-elb.dns_name
}
