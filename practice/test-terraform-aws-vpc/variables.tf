variable "project" {
    type = string  
}

variable "environment" {
    type = string  
}

variable "vpc_cidrs" {
    type = string    
}

variable "vpc_tags" {
    type = map
    default = { }  
}

variable "gw_tags" {
    type = map
    default = { }  
}

variable "public_subnet_cidrs" {
    type = list
    default = ["10.0.11.0/24","10.0.12.0/24"]  
}

variable "public_subnet_tags" {
  type = map
  default = {}
}
variable "private_subnet_cidrs" {
    type = list
    default = ["10.0.21.0/24","10.0.22.0/24"]  
}

variable "private_subnet_tags" {
  type = map
  default = {}
}
variable "database_subnet_cidrs" {
    type = list
    default = ["10.0.31.0/24","10.0.32.0/24"]  
}

variable "database_subnet_tags" {
  type = map
  default = {}
}



variable "route_table_public_tags" {
  type = map
  default = {}  
}

variable "route_table_private_tags" {
  type = map
  default = {}  
}

variable "route_table_database_tags" {
  type = map
  default = {}  
}

variable "aws_route_public_tags" {
  type = map
  default = {}  
}

variable "eip_tags" {
    type = map 
    default = {}  
}

variable "natgw_tags" {
    type = map 
    default = {}  
}

variable "is_peering_required" {
  type = bool
  default = false  
}

variable "peering_tags" {
  type = map
  default = {}
  
}
