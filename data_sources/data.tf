# Data source to find the most recent  AMI
data "aws_ami" "latest_ami" {
  owners      = ["973714476881"] # Specifies the owner is Amazon
  most_recent = true       # Retrieves the latest version

filter {
  name = "name"
  values = ["Redhat-9-DevOps-Practice"]
}

}

data "aws_instance" "foo" {
  instance_id = "i-08ee8a743388aff66"
  
}

output "instance_private_ip" {
  value = data.aws_instance.foo
  }