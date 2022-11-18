resource "aws_security_group" "Classroom_SG" {
  vpc_id       = aws_vpc.class_room.id
  name         = "Classroom_SG_RDP"
  description  = "Security Group that allows RDP to work"

  tags = {
    Name = "Training-SG"
  }
}

resource "aws_security_group_rule" "ingress_rule" {
  type              = "ingress"
  from_port         = 3389
  to_port           = 3389
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.Classroom_SG.id
}