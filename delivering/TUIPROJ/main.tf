#originalcuidados#Projecto principal ccross
#region = "us-west-2"

locals {
  regiao = "eu-west-3"
  
}

 locals {
  regiaoDC = "eu-west-3"
  
}

locals {
  AZregiaoDC = "eu-west-3a"
  
}



terraform {
   backend "s3" {
    bucket = "terraformtfstatejp"
    key    = "terraform-testejpcocus.tfstate"
    region = "eu-west-3"
   
  }
}

provider "aws" {
  profile    = ""
  region     = local.regiao
 
}

######criacao do file de task defenition aqui porque devido ao problema o fargate é criado dentro de redes






module "redes" {
  source = "../redes"

  regiaoDC     = local.regiao
  AZregiaoDC = local.AZregiaoDC
  cdir_vpc = var.cdir_vpc
  ##subnet_cdir_subnetpriv_aza = var.subnet_cdir_subnetpriv_aza
  #subnet_nome_subnetpriv_aza = "awslab-subnet-private"
  subnet_cdir_subpublica_nat_aza  = "172.16.1.0/24"
  subnet_cdir_subnetpriv_aza = "172.16.2.0/24"
  nome_vpc = "awslab-vpc"
  #routetable_name = "awslab-rt-internet"
  igw_name="cocus_IGW"
  ###LDAP_VPC
 map_public_ip_on_launch_priv = false
 map_public_ip_on_launch_pub = true

  subnet_nome_subnetpublic_aza = "awslab-subnet-public"
  subnet_nome_subnetpriv_aza   = "awslab-subnet-private"
 
}


###SG

module "SG" {
  source = "../SG"
   aws_vpc_vpc_cross_id = "${module.redes.aws_vpc_vpc_cross_id}"
   
   vpc_ldap_id_p = "${module.redes.aws_vpc_vpc_cross_id}"
  
cdir_vpc= var.cdir_vpc


nome_SG_ec2 = "SG_EC2_EFS"


} 



#############
###Ec2 2

data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
owners = ["099720109477"]
    
}

 
##priivate Ec2

module "private_EC2" {
    source = "../ec2"
    instance_type = var.instance_type
    ami_id =  "${data.aws_ami.ubuntu.id}"
    subnet_id = "${module.redes.aws_subnet_private1_aza_id}"
    security_groups = "${module.SG.aws_security_group__private}"
    key_name = var.key_par_name
    
   
    
    ec2_name = var.ec2_name
    

    user_data = <<-EOF
    #!/bin/bash
   ssh-keygen -b 2048 -t rsa -f  sshkey -q -P ""
   sudo apt update 
   sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
   
   sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
   sudo service ssh restart
   sudo apt install mysql-server
   
   sudo systemctl start mysql
   
   sudo systemctl enable mysql
   sudo systemctl start mysql
   
   sudo systemctl enable mysql
   
   systemctl status mysql.service 
                  
                  
               
                 EOF 

  }



  ###public Ec2

  module "public_EC2" {
    source = "../ec2"
    instance_type = var.instance_type
    ami_id =  "${data.aws_ami.ubuntu.id}"
    subnet_id = "${module.redes.aws_subnet_publica_aza_id}"
    security_groups = "${module.SG.aws_security_group__public}"
    key_name = var.key_par_name
    
   
    
    ec2_name = var.ec2_name
    

    user_data = <<-EOF
    #!/bin/bash
   ssh-keygen -b 2048 -t rsa -f  sshkey -q -P ""
   sudo apt update 
   sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
   
   sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
   sudo service ssh restart
   sudo apt install mysql-server
   
   sudo systemctl start mysql
   
   sudo systemctl enable mysql
   sudo systemctl start mysql
   
   sudo systemctl enable mysql
   
   systemctl status mysql.service 
                  
                  
               
                 EOF 

  }

  resource "aws_eip" "jumphost" {
    instance =  "${module.public_EC2.aws_instance_ec2instance_id}"
    vpc = true
  }