variable "vpc_id" {
  description = "ID of your VPC."
}
variable "project" {}

locals {
  vpc_id  = "${var.vpc_id}"
  igw_id  = "${aws_internet_gateway.default.id}"
  project = "${var.project}"
}