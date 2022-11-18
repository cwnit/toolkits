
locals {

  subnet_az_to_id   = zipmap(data.aws_subnet.private.*.availability_zone, data.aws_subnet.private.*.id)
  subnet_az_to_cidr = zipmap(data.aws_subnet.private.*.availability_zone, data.aws_subnet.private.*.cidr_block)
  sorted_subnet_azs = sort(data.aws_subnet.private.*.availability_zone)

}



/*
SAMPLE OUTPUT:

subnet_az_to_cidr
========================================
az_to_cidr = {
    + us-east-1a = "192.168.1.121.0/27"
    + us-east-1b = "192.168.1.96/27"
}


subnet_az_to_id 
========================================
az_to_id   = {
    + us-east-1a = "subnet-000XXXXXXXXXXXX15"
    + us-east-1b = "subnet-0d5XXXXXXXXXXXXab"
}


*/
