variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
  
}

/* variable "instance_type" {
    type = string
    default = "t3.micro"
  
} */

/* # map 
variable "instance" {
    type = map(string)
    default = {
      mongodb = "t3.micro"
      user = "t3.micro"
      frontend = "t3.micro"
    }
  
} */

#list , conver list to set
variable "instance" {
    type = list 
    default = ["mongodb","user"]
    
}


variable "zone_id" {
    type = string
    default = "Z0148099BE47QLVOZU0Q"
  
}

variable "domain_name" {
    type = string
    default = "advidevops.online"
      
}