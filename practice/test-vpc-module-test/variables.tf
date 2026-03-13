variable "project" {
 type = string 
 default = "roboshop"
}

variable "environment" {
 type = string 
default = "dev"
}

variable "vpc_cidrs" {
 type = string 
default = "10.0.0.0/16"
}