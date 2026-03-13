resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidrs
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = local.common_tags
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = local.gw_final_tags
}

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidrs[count.index]
  availability_zone = local.avz[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "Main"
  }
}