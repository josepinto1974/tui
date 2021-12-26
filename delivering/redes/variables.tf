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
  default = "10.0.0.0/16"
}

variable "subnet_cdir_subpublica_nat_aza" {
  type = string
  default = "10.0.31.0/24"
}

variable "subnet_cdir_subnetpriv_aza" {
  type = string
  default = "10.0.11.0/24"
}


variable "nome_vpc" {
  type = string
  default = "scib-cross-vpc"
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
variable "aws_vpc_vpc_cross_id" {
  type = string
  default = ""
}

