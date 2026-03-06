output "ami_details" {
  value = data.aws_ami.latest_ami.id
}