resource "aws_codebuild_project" "codebuild_project_test" {
    name          = "${var.myname}-cb-runner"
    description   = var.description
    build_timeout = var.build_timeout
    service_role  = var.cb_service_role

    artifacts {
        type = "NO_ARTIFACTS"
    }

    environment {
        compute_type                = "BUILD_GENERAL1_SMALL"
        image                       = "aws/codebuild/standard:2.0"
        type                        = "LINUX_CONTAINER"
        image_pull_credentials_type = "CODEBUILD"
        privileged_mode             = true

    }

    source {
        type              = "CODECOMMIT"
        buildspec         = "buildspec.yml"
        git_clone_depth   = 0
        location          = https://git-codecommit.us-east-1.amazonaws.com/v1/repos/[repo_name]" #MUST BE THE HTTPS URL!!
        
    }

}
