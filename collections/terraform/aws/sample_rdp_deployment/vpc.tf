
#VPC
resource "aws_vpc" "class_room" {
  cidr_block       = "10.10.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "Train-Class-VPC"
  }
}