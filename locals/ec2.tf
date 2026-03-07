resource "aws_instance" "example" {
  ami           = local.ami_id
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_security_group.remote_state_create_SG.id]

  tags = local.final_tags
}

resource "aws_security_group" "remote_state_create_SG" {
  name        = "terraform_allow_tls_remote_state"
  description = "Allow traffic"
 
  tags = {
    Name = "terraform_allow_tls_remote_state"
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
