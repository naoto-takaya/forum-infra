resource "aws_vpc" "forum-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name    = "forum-vpc",
    product = "forum"
  }
}

resource "aws_subnet" "forum-subnet-public-1a" {
  vpc_id                  = "vpc-0917a8a6b974ca1b2"
  cidr_block              = "10.0.10.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name    = "forum-public-1a",
    product = "forum"
  }
}

resource "aws_subnet" "forum-subnet-public-1c" {
  vpc_id                  = "vpc-0917a8a6b974ca1b2"
  cidr_block              = "10.0.30.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name    = "forum-public-1c",
    product = "forum"
  }
}

resource "aws_subnet" "forum-subnet-private-1a" {
  vpc_id     = "vpc-0917a8a6b974ca1b2"
  cidr_block = "10.0.20.0/24"
  tags = {
    Name    = "forum-private-1a",
    product = "forum"
  }
}

resource "aws_subnet" "forum-subnet-private-1c" {
  vpc_id     = "vpc-0917a8a6b974ca1b2"
  cidr_block = "10.0.40.0/24"
  tags = {
    Name    = "forum-private-1c",
    product = "forum"
  }
}
