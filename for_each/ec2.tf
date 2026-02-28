resource "aws_instance" "example" {
  #for_each = var.instance
  for_each = toset(var.instance)
  ami           = var.ami_id
  #instance_type = each.value 
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_group.id]

  tags = {
    Name = each.key
    project = "roboshop"
    Environment = "dev"
  }
}

resource "aws_security_group" "sg_group" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  
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

  tags = {
    Name = "allow_tls"
    project = "roboshop"
    Environment = "dev"
  }
}