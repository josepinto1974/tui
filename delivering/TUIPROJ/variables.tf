variable "AZregiaoDC" {
  type = string
  default = "wwrwt2.micro"
}

variable "regiaoDC" {
  type = string
  default = "wwwt2micro"
}

variable "cdir_vpc" {
  type = string
  default = "172.16.0.0/16"
}



variable "subnet_cdir_subnetpriv_aza" {
  type = string
  default = "10.0.11.0/24"
}



variable "igw_name" {
  type = string
  default = "scib-cross-IGW"
}


variable "map_public_ip_on_launch_priv" {
  type = string
  default = "scib-cross-IGW"
}


variable "map_public_ip_on_launch_pub" {
  type = string
  default = "scib-cross-IGW"
}


variable "subnet_nome_subnetpublic_aza" {
  type = string
  default = "subnetpublicaAVAZA"
}

variable "subnet_nome_subnetpriv_aza" {
  type = string
  default = "subnetpublicaAVAZB"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_par_name" {
  type = string
  default = "cocusjp"
}

 



variable "subnet_cdir_subpublica_nat_aza" {
  type = string
  default = "10.0.31.0/24"
}

variable "nome_vpc" {
  type = string
  default = "scib-cross-vpc"
}


variable "sg_ec2" {
  type = string
  default = "sssddd"
}

variable "user_data" {
  type = string
  default = "sssddd"
}


variable "aws_subnet_private1_aza_id" {
  type = string
  default = "ec2-access-to-services-role"
}

variable "ec2_name" {
  type = string
  default = "ec2nome"
}


variable "map_public_ip_on_launch_var" {
  type = string
  default = "ec2nome"
}

variable "aws_vpc_vpc_cross_id" {
  type = string
  default = "L3333LL"
}

variable "vpc_ldap_id_p" {
  type = string
  default = ""
}


variable "nome_SG_ec2" {
  type = string
  default = "L00mmmmm00LL"
}

variable "ami_id" {
  type = string
  default = "ami-0d3c032f5934e1b41"
}

variable "subnet_id" {
  type = string
  default = ""
}

 variable "security_groups" {
  type = string
  default = "SSS"
} 

variable "key_name" {
  type = string
  default = "cocusjp"
}