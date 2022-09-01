#SUBNET 1
resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.class_room.id
  cidr_block = "10.10.0.0/28"

  tags = {
    Name = "Train-SN-A"
  }
}


#SUBNET 2
resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.class_room.id
  cidr_block = "10.10.0.16/28"

  tags = {
    Name = "Train-SN-B"
  }
}

#Assocaite Route table
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.private-1.id
  route_table_id = aws_route_table.class_room.id
}


resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.private-2.id
  route_table_id = aws_route_table.class_room.id
}