variable "ingress_rules" {
    default = [
        {
           port = 22
           cidr_blocks      = ["0.0.0.0/0"]
           description = "allowing traffic from port 22"
        },
        
        {
            port = 443
           cidr_blocks      = ["0.0.0.0/0"]
           description = "allowing traffic from port 443"
        }
    ]
  
}