resource "aws_route53_record" "dev_r53" {
  for_each = aws_instance.example
  zone_id = var.zone_id
  name    = "${each.key}.dev.${var.domain_name}"
  type    = "A"
  ttl     = "1"
  records = [each.value.private_ip]
  allow_overwrite = true
}

#public ip to frontend advidevops.online
#lookup function 

resource "aws_route53_record" "dev_r53_public" {
  zone_id = var.zone_id
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = "1"
  records = [lookup(aws_instance.example,"frontend").public_ip]
  allow_overwrite = true
}