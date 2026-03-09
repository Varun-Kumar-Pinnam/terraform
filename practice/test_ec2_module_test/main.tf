module "ec2" {
    source = "../test_terrform_aws_instace"
    project = var.project
    environment = var.environment
    instance_type = var.instance_type
    ami_id = data.aws_ami.this.id
    sg_ids = var.sg_ids  

    tags = {
      Name = "${var.project}-${var.environment}-${var.component}"
      Component = var.component
    }
}