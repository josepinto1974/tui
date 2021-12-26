####
variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_par_name" {
  type = string
  default = "finatakp"
}



variable "subnet_cdir_subpublica_nat_aza" {
  type = string
  default = "10.0.31.0/24"
}

variable "nome_vpc" {
  type = string
  default = "scib-cross-vpc"
}


variable "aws_vpc_vpc_cross_id" {
  type = string
  default = ""
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

variable "user_data" {
  type = string
  default = "scib-cross-services-fargate"
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
  default = "key"
}