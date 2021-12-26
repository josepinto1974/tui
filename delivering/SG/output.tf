
 output "aws_security_group__public" {
  value       = "${aws_security_group.public.id}"
  description = "aws_security_group__public_id"
  
} 



 output "aws_security_group__private" {
  value       = "${aws_security_group.private.id}"
  description = "aws_security_group__private_id"
  
}
