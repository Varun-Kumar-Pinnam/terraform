resource "aws_route53_record" "private" {
  count = 5
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}

#private ip for frontend advidevops.online
# As part of functions
resource "aws_route53_record" "public" {
  
  zone_id = var.zone_id
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = 1
  # records = [aws_instance.example[count.index].private_ip]
  records = [aws_instance.example[index(var.instances,"frontend")].public_ip]
}
