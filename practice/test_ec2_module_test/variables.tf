variable "project" {
    type = string
    default = "roboshop"   
}

variable "environment" {
    type = string
    default = "dev"   
}

variable "instance_type" {
    type = string
    default = "t3.micro"  
}

variable "sg_ids" {
  type = list(string)
  default = ["sg-02a915d53f8e3507f"]
}

variable "component" {
    type = string
    default = "catalogue"  
}