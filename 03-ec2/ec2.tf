provider "aws" {
      region = "us-east-1"
  }

resource "aws_instance" "demo" {
  ami           = "ami-0e59251addb8f9901"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}