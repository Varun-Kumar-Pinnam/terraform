locals {
  commom_tags={
    Name = "terraform practice"
    Project = "Roboshop"
    Environment = "dev"
    terraform = "true"
  }
  ami_id        = data.aws_ami.latest_ami.id
  instance_type = "t3.micro"
  final_tags = merge(local.commom_tags, var.ec2_tags)

}