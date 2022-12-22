locals {

  name_prefix = "Unique prefix you want to append to the name of your pipeline"
  cp_name     = "${local.name_prefix}-${var.AppName}"

}
