

module "code_pipeline" {
  source = "../module-aws-codepipeline" #using module locally
  #source       =    #using github repository
  AppName       = "My_new_pipeline"
  code_pipeline = local.code_pipeline

}
