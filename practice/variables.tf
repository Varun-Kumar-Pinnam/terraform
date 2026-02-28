variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"  
}

variable "aws_instance_type" {
    type = string
    default = "t3.micro"  
}

variable "instances" {
    type = list
    default = ["mongodb","user","redis","frontend","catalogue"]  
}

variable "sg_name" {
    type = string
    default = "terraform_allow_roboshop"  
}

variable "sg_tags_name" {
    type = string
    default = "roboshop"  
}

variable "sg_from_port" {
    type = number
    default = 0 
}

variable "sg_to_port" {
    type = number
    default = 0 
}

variable "sg_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "zone_id" {
    type = string
    default = "Z0148099BE47QLVOZU0Q"  
}

variable "domain_name" {
    type = string
    default = "advidevops.online"  
}