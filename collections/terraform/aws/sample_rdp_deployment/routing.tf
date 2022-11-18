#ROUTE TABLE
resource "aws_route_table" "class_room" {
  vpc_id = aws_vpc.class_room.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  

  tags = {
    Name = "Train-RT"
  }
}


resource "aws_main_route_table_association" "a" {
  vpc_id         = aws_vpc.class_room.id
  route_table_id = aws_route_table.class_room.id
}