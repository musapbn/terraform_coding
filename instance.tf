provider "aws" {
  profile = "default"
  version = "~> 2.60"
  region  = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  #count         = "3"

  tags = {
      Name = "web_server" # {index.count+1}
  }
  depends_on = [aws_vpc.main]
}