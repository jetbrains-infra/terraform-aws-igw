variable "vpc_id" {
  description = "ID of your VPC."
}
variable "tags" {
  description = "Tags."
  type        = map(string)
}

locals {
  vpc_id  = var.vpc_id
  igw_id  = aws_internet_gateway.default.id
  tags    = merge({
    Module = "Internet Gateway"
    ModuleSource    = "https://github.com/jetbrains-infra/terraform-aws-vpc/"
  }, var.tags)
}