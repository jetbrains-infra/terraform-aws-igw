resource "aws_internet_gateway" "default" {
  vpc_id = "${local.vpc_id}"
}

resource "aws_route_table" "public_to_internet" {
  vpc_id = "${local.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${local.igw_id}"
  }

  tags {
    Name    = "Internet access"
    Project = "${local.project}"
  }
}