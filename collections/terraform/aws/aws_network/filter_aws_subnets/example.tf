data "aws_vpc" "selected" {
  tags = {
    your_tag_name = "tag_value"
  }
}


data "aws_subnets" "selected" {


  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
  filter {
    name   = "state"
    values = ["available"]
  }

  /*
    additional filters as you need them
    
    filter {
        name   = "tag:Name"
        values = ["your_subnet_tag"]
    }
    */
}


data "aws_subnet" "private" {

  count = length(data.aws_subnets.selected.ids)
  id    = data.aws_subnets.selected.ids[count.index]

}


output "using_your_subnet_id_value" {
  #you can set the value just as shown below to any reource you want to use for the subnet id
  value = lookup(local.subnet_az_to_id, local.sorted_subnet_azs[0])
  /*
        The index number in sorted_subnets_azs repreents an array that starts with 0.
        You will need to pass that value in to select the subnet of your choice, in this example I use 0
  */

}


output "using_your_cidr_value" {
  #you can set the value just as shown below you can attach your cidr block to resources as allowed    
  value = lookup(local.subnet_az_to_cidr, local.sorted_subnet_azs[1])
  /*
        The index number in sorted_subnets_azs repreents an array that starts with 0.
        You will need to pass that value in to select the subnet of your choice, in this example I use 1
  */

}
