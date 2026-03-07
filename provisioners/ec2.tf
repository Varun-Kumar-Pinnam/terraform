resource "aws_instance" "example" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.create_SG.id]

  tags = {
    Name = "terraform"
    Project = "Roboshop"
  }
  provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}"
  }
  provisioner "local-exec" {
    command = "exit 1"
    on_failure = continue
  }
  provisioner "local-exec" {
    when = destroy
    command = "echo  destroyng the instance"    
  }
  #remote-exec 
  connection {
    type        = "ssh"
    user        = "ec2-user" # Default user for Amazon Linux AMI
    password    =  "DevOps321"
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]
  }

  provisioner "remote-exec" {
    inline = [
      "sudo systemctl stop nginx",
      "echo nginx stopped"
    ]
    when = destroy
    
  }

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
