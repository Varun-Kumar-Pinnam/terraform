variable "ami_id" {
    type        = string
    default     = "ami-0220d79f3f480ecf5"
    description = "RHEL 9 Image"
}

variable "aws_instance_type" {
    type        = string
    default = "t3.micro"
    description = "instance"

}

variable "ec2_tags" {
    type = map
    default     = {
     OS =   "RHEL machine"
    }
}

variable "sg_name" {
    type         = string
    default      = "terraform_allow_tls"
   }

variable "sg_tags_name" {
    type         = map
    default     = {
    Name        = "terraform_allow_tls"
    Project     = "Roboshop"
    Environment = "Dev"
    terraform   = "true"
    }
}

variable "sg_from_port" {
    type         = number
    default      = 0
   }

variable "sg_to_port" {
    type         = number
    default      = 0
   }

variable "sg_cidr_blocks" {
    type         = list
    default      = ["0.0.0.0/0"]
   }


