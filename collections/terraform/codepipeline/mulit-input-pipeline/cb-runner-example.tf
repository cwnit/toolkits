resource "aws_codebuild_project" "codebuild_project_test" {
    name          = "${ENV}-cb-runner"
    description   = "Terraform codebuild project"
    build_timeout = "5"
    service_role  = "Codebuild Service Role arn"

    artifacts {
        type = "CODEPIPELINE"
    }


    environment {
        compute_type                = "BUILD_GENERAL1_SMALL"
        image                       = "aws/codebuild/standard:2.0"
        type                        = "LINUX_CONTAINER"
        image_pull_credentials_type = "CODEBUILD"
        privileged_mode             = true


    }

    source {
        type      = "CODEPIPELINE"

    }

}

resource "aws_codepipeline" "foo" {
  name     = "${ENV}-foo-pipeline"
  role_arn = "codepipeline service role arn"

  artifact_store {
    location = "s3 bucket name, NOT THE ARN"
    type     = "S3"
  }

  stage {
    name = "Source"

    action {
      name             = "1stSource"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeCommit"
      version         = "1"
      output_artifacts = ["src"]

      configuration = {
        RepositoryName = "BuildSpecRepo"
        BranchName = "master"
        PollForSourceChanges = true
      }

      run_order = "1"
    }

    action {
      name             = "2ndSource"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeCommit"
      version         = "1"
      output_artifacts = ["src2"]

      configuration = {
        RepositoryName = "vpc"
        BranchName = "master"
        PollForSourceChanges = true
      }

      run_order = "2"
    }

    action {
      name             = "3rdSource"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeCommit"
      version         = "1"
      output_artifacts = ["src3"]

      configuration = {
        RepositoryName = "ec2"
        BranchName = "master"
      }
      run_order = "3"
    }

  }


  stage {
    name = "Build"

    action {
      name            = "Build"
      category        = "Build"
      owner           = "AWS"
      provider        = "CodeBuild"
      input_artifacts = ["src","src2","src3"]
      version         = "1"

      configuration = {
        ProjectName = aws_codebuild_project.codebuild_project_test.name
        PrimarySource = "src"
      }
    }
  }
}