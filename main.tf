provider "aws" {
    region = "us-east-1"
    profile = "terraform"
}

resource "aws_instance" "tf-test" {
  ami           = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-test"
  }
}