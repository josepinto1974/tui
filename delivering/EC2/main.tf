




resource "aws_instance" "ec2instance" {
    instance_type = var.instance_type
    ami =  var.ami_id 
    subnet_id = var.subnet_id
    security_groups = toset([var.security_groups])
    key_name = var.key_name
    
    user_data= var.user_data
   
    tags = {
      Name = var.ec2_name
    }
  }


