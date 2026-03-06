resource "aws_instance" "example" {
  count = length(var.instances)
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.create_SG.id]

  tags = merge(
    {    Name = var.instances[count.index]
    },
    var.commom_tags
  )
  
/*   {
    Name = var.instances[count.index]
    Project = "Roboshop"
  } */

}

resource "aws_security_group" "create_SG" {
  name        = "terraform_allow_tls"
  description = "Allow traffic"
 
  tags = {
    Name = "terraform_allow_tls"
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


}


/* resource "aws_route53_record" "www" {
  count = 5
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
} */