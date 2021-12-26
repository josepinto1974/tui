
   output "aws_vpc_vpc_cross_id" {
  value = "${aws_vpc.vpc.id}"
}



   output "aws_subnet_publica_aza_id" {
  value = "${aws_subnet.nat_gateway.id}"
} 

   output "aws_subnet_private1_aza_id" {
  value = "${aws_subnet.instance.id}"
} 




 output "vpc_cross_id" {
  value       = "${aws_vpc.vpc.id}"
  description = "id de vpc cross"
  
} 
