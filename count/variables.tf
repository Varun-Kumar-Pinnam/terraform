variable "instances" {
    type = list
    default = ["mongodb", "catalouge", "user", "redis", "frontend"]
    }

variable "zone_id" {
    type = string
    default = "Z0148099BE47QLVOZU0Q"    
}

variable "domain_name" {
    type = string
    default = "advidevops.online"    
}

variable "fruits" {
    type = list
    default = ["apple","banana","apple","citrus"]
  }


variable "fruits_set" {
    type = set(string)
    default = ["apple","banana","apple","citrus"]
  }