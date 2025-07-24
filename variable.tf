variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "project" {
  description = "The name of the project, used for tagging resources."
  type        = string
  
}

variable "availability_zones" {
  description = "The number of availability zones to use for the EKS cluster."
  type        = number
  
}

variable "subnet_cidr_bits" {
  description = "The number of bits to use for subnetting the VPC CIDR block."
  type        = number
  
}
variable "availability_zones_count" {
  description = "The number of availability zones to use for the EKS cluster."
  type        = number
  
}