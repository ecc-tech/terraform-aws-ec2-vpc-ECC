#provide output variables for the VPC module so that other modules can ssynchronized with VPC modules

output "aws_subnet_public" {
  value = aws_subnet.public[*].id
  
}
output "aws_private_subnet" {
  value = aws_subnet.private[*].id
  
}

output "aws_vpc_id" {
  value = aws_vpc.this.id
  
}
output "aws_internet_gateway_id" {
  value = aws_internet_gateway.this.id
  
}