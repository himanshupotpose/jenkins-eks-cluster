provider "aws" {
     region = "ap-south-1"
  
}

resource "aws_instance" "my-instance" {
  
     ami = "ami-05d2d839d4f73aafb" 
     instance_type = "t3.small"
     vpc_security_group_ids =["sg-0843a7cb09cfe1125"] 
     key_name = "dell" 
     tags = {
        Name = "my-instance"
        env = "practice"
     }
}