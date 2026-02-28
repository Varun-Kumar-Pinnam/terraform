resource "aws_instance" "example" {
  count = 5
  ami           = var.ami_id
  instance_type = var.aws_instance_type
  vpc_security_group_ids = [aws_security_group.create_SG.id]

  tags = {
    Name = var.instances[count.index]
    Project = "Roboshop"
  }
}

resource "aws_security_group" "create_SG" {
  name        = var.sg_name
  description = "Allow traffic"
 
  tags = {
    Name = var.sg_tags_name
  }

    egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

    ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

}
