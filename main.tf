provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "sanket_test_1" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags {
    Name     = "sanket_test_1"
    Location = "Oregon"
  }
}

resource "aws_subnet" "sanket_subnet_oregon_v1" {
  vpc_id     = "${aws_vpc.sanket_test_1.id}"
  cidr_block = "10.10.1.0/24"

  tags {
    Name = "sanket_subnet_oregon_v1"
  }
}

resource "aws_subnet" "sanket_subnet_oregon_v2" {
  vpc_id     = "${aws_vpc.sanket_test_1.id}"
  cidr_block = "10.10.2.0/24"

  tags {
    Name = "sanket_subnet_oregon_v2"
  }
}
