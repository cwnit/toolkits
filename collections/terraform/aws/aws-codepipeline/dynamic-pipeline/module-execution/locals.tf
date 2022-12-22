/*
 
THE PIPELINE REQUIRES YOU BUILD YOUR STAGES AND ACTIONS.  SOME ACTIONS HAVE ENVIRONMENT VARIALBES AND THOSE WILL NEED TO BE BUILT
INDIVIDUALLY PER ACTION.

*/


locals {

  /*
DECLARE enviornment variables.  Note each Action does not require environment variables
*/
  action_second_stage_variables = [
    {
      name  = "PIPELINE_EXECUTION_ID"
      type  = "PLAINTEXT"
      value = "#{codepipeline.PipelineExecutionId}"
    },
    {
      name  = "NamespaceVariable"
      type  = "PLAINTEXT"
      value = "some_value"
    },
  ]

  action_third_stage_variables = [
    {
      name  = "PL_VARIABLE_1"
      type  = "PLAINTEXT"
      value = "VALUE1"
    },
    {
      name  = "PL_VARIABLE 2"
      type  = "PLAINTEXT"
      value = "VALUE2"
    },
    {
      name  = "PL_VARIABLE_3"
      type  = "PLAINTEXT"
      value = "VAUE3"
    },
    {
      name  = "PL_VARIABLE_4"
      type  = "PLAINTEXT"
      value = "#{BLD.NamespaceVariable}"
    },
  ]

  /*
BUILD YOUR STAGES
*/

  code_pipeline = {
    codepipeline-configs = {
      code_pipeline_role_arn = var.cp_arn
      artifact_store = {
        type            = var.cp_artifact_type
        artifact_bucket = var.cp_artifact_bucketname
      }
      stages = {
        stage_1 = {
          name = "Download"
          actions = {
            action_1 = {
              run_order        = 1
              category         = "Source"
              name             = "First_Stage"
              owner            = "AWS"
              provider         = "CodeCommit"
              version          = "1"
              output_artifacts = ["download_ouput"]
              configuration = {
                RepositoryName       = "Codecommit_target_repo"
                BranchName           = "main"
                PollForSourceChanges = true
                OutputArtifactFormat = "CODE_ZIP"
              }
            }
          }
        }
        stage_2 = {
          name = "Build"
          actions = {
            action_1 = {
              run_order        = 2
              category         = "Build"
              name             = "Second_Stage"
              owner            = "AWS"
              provider         = "CodeBuild"
              version          = "1"
              namespace        = "BLD"
              input_artifacts  = ["Download_ouput"]
              output_artifacts = ["build_outputs"]
              configuration = {
                ProjectName          = "codebuild_project_name_for_second_stage"
                EnvironmentVariables = jsonencode(local.action_second_stage_variables)
              }
            }
          }
        }
        stage_3 = {
          name = "Validation"
          actions = {
            action_1 = {
              run_order        = 1
              name             = "Third_Stage"
              category         = "Build"
              owner            = "AWS"
              provider         = "CodeBuild"
              version          = "1"
              input_artifacts  = ["build_outputs"]
              output_artifacts = ["validation_outputs"]
              configuration = {
                ProjectName          = "codebuild_project_name_for_third_stage"
                EnvironmentVariables = jsonencode(local.action_third_stage_variables)
              }

            }
          }
        }
      }
    }
  }
}
