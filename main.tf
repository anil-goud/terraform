provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0dd574ef87b79ac6c"  # Replace with a valid AMI ID
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
