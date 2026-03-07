# Data source to find the most recent  AMI
data "aws_ami" "latest_ami" {
  owners      = ["973714476881"] # Specifies the owner is Amazon
  most_recent = true       # Retrieves the latest version

filter {
  name = "name"
  values = ["Redhat-9-DevOps-Practice"]
}

}

