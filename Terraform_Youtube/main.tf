provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}

locals {
  setup_name = "first"
}

resource "aws_vpc" "testvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${local.setup_name}_vpc"
  }
}

resource "aws_subnet" "testsubnet" {
  vpc_id     = aws_vpc.testvpc.id // To get access data from a different resource: <resource>.<resource_name>.<exported_attribute>
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${local.setup_name}_Web"
  }
}


resource "aws_instance" "testexample" {
  ami           = "ami-0742b4e673072066f"
  instance_type = var.my_instance // changing the instance type will restart the machine and kick the users off 
  subnet_id     = aws_subnet.testsubnet.id

  tags = var.instance_tags
}
