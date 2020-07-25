resource "aws_subnet" "public_subnet" {
  vpc_id     = "vpc-0d8832e4d7a94651c"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet"
  }
}