# VPC Public Terraform Module

## Overview

This Terraform module provisions an **Amazon VPC** with both **public and private subnets** across multiple Availability Zones, along with an **Internet Gateway**. The module is designed for reusability, environment-based separation using workspaces, and version control via GitHub and Terraform Registry. It also supports remote state locking using S3.

---

## Example Usage

```hcl
module "vpc" {
  source = "github repo link"

  project                  = "demo-project"
  vpc_cidr                 = "10.0.0.0/16"
  availability_zones       = ["us-east-1a", "us-east-1b"]
  subnet_cidr_bits         = 8
  availability_zones_count = 2
}

## Input Variables

| Name                     | Type           | Description                                                                 | Example                        |
|--------------------------|----------------|-----------------------------------------------------------------------------|--------------------------------|
| `project`                | `string`       | Prefix for naming AWS resources and tagging                                | `"demo-project"`               |
| `vpc_cidr`               | `string`       | The CIDR block for the VPC                                                 | `"10.0.0.0/16"`                |
| `availability_zones`     | `list(string)` | List of Availability Zones to create subnets in                            | `["us-east-1a", "us-east-1b"]` |
| `subnet_cidr_bits`       | `number`       | Number of bits to use for subnet CIDR blocks (used for subnet sizing)      | `8`                            |
| `availability_zones_count` | `number`     | Number of Availability Zones to use (should match length of AZ list above) | `2`                            |


## Output Values

| Name                        | Description                                                  | Example Output              |
|-----------------------------|--------------------------------------------------------------|-----------------------------|
| `aws_vpc_id`                | ID of the created VPC                                        | `vpc-0a1b2c3d4e5f6g7h8`     |
| `aws_internet_gateway_id`   | ID of the Internet Gateway attached to the VPC               | `igw-0a1b2c3d4e5f6g7h8`     |
| `aws_subnet_public`         | List of public subnet IDs created in specified AZs          | `["subnet-1234abcd", ...]`  |
| `aws_private_subnet`        | List of private subnet IDs created in specified AZs         | `["subnet-abcd1234", ...]`  |

