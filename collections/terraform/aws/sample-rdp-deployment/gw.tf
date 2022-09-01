#INTERNET GATEWAY
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.class_room.id

  tags = {
    Name = "Train-Class-IGW"
  }
}

#EGRESS IGW
resource "aws_egress_only_internet_gateway" "egw" {
  vpc_id = aws_vpc.class_room.id

  tags = {
    Name = "Train-Class-EIGW"
  }
}