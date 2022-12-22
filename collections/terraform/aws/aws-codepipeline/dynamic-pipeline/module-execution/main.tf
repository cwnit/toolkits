

module "code_pipeline" {
  source = "../module-aws-codepipeline" #using module locally
  #source       = "your-github-repository/aws-codepipeline" #using github repository
  AppName       = "My_new_pipeline"
  code_pipeline = local.code_pipeline

}
