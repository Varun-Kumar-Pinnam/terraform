locals {
  ami_id = var.ami_id
  instance_type = var.aws_instance_type
  commom_tags={
    Name        = "locals practice"
    Project     = "Roboshop"
    Environment = "Dev"
    terraform   = "true"
  }
  sg_name = var.sg_name
  ec2_tags = var.ec2_tags
  ec2_final_tags= merge(local.commom_tags, local.ec2_tags)
}