resource "aws_instance" "example" {
  ami           = var.ami_id  
  #if the condition is true select t3.micro value if false t3.small
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"

  vpc_security_group_ids = [aws_security_group.create_SG.id]

  tags = var.ec2_tags
}

resource "aws_security_group" "create_SG" {
  name        = var.sg_name
  description = "Allow traffic"
 
  tags = var.sg_tags_name

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
