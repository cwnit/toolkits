data "aws_caller_identity" "current" {}

# Get latest Windows Server 2019 AMI
data "aws_ami" "windows-2019" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base*"]
  }
  filter {
       name   = "virtualization-type"
       values = ["hvm"]  
  }  
}