
#CREATE SINGLE EC2 INSTANCE
resource "aws_instance" "ec2_ami" {
    ami                     = data.aws_ami.windows-2019.id
    instance_type           = "t2.micro"
    subnet_id               = aws_subnet.private-1.id
    key_name                = "class_keypair"
    vpc_security_group_ids  = [ "${aws_security_group.Classroom_SG.id}" ]
    disable_api_termination = false

    root_block_device {
        delete_on_termination   = true
        volume_size             = 100
        volume_type             = "gp2"
    }

    enclave_options {
    enabled                     = false

    }       

    tags = {
        Name                    = "Train-ec2"
    }

}

#CREATE ELASTIC IP
resource "aws_eip" "lb" {
  instance = aws_instance.ec2_ami.id
  vpc      = true

  tags = {
        Name                    = "Train-ip"
  }


}