# terraform dynamic pipeline

------------

The Terraform Dynamic pipeline will allow terraform developers working in AWS to create an AWS Codepipeline with Dynamic Stages.  The key to a dynamic pipline is centered around ensuring that the stages and actions are able to support each stage and an action in every stage.  There are variations where people have gone for dynamic actions which can also work but if you want your entire pipeline to be dynamic than you need to consider the stage as the actual dynamic port of the pipeline.

```
├── Pipeline       
│   ├── Stage
│       └── Action
│           └── Configurations
│       └── Action
│           └── Configurations
│               └── Codebuild Job
│               └── EnvironmentVariables

```

For those of you who do not understand the relationship, a Codepipeline is comprised of stages.  The stages are used to perform CI/CD actions such as building, testing, packaging and deploying.  I preface that because within each stage you can have different actions. The pipeline allows you to create many actions in one stage or a single action depending on your use case.

------------

## Providers

Provider | Version | Source |
:------- | :------ | :-----:
| Terraform | 1.2.0 | [Download](https://releases.hashicorp.com/terraform/) |
| hashicorp/aws | 4.35.0 | [Download](https://registry.terraform.io/providers/hashicorp/aws/4.35.0) |

------------

## Repository Contents

This repository consists of the following Files and Modules.

| File Name | Language | Description |
| :-------- | :------: | :---------- |
| module-aws-codepipline/dynamic_pipeline.tf | Terraform | The terraform file that generates your pipeline |
| module-aws-codepipline/locals.tf | Terraform | Creates Module specific variables used in the Pipeline |
| module-aws-codepipline/variables.tf | Terraform | Pipeline variables required to execute module |
| module-execution/locals.tf | Terraform | Used to build a custom stage variable which is passed into the module. |
| module-execution/main.tf | Terraform | File used to call the module and pass in the unique stage value to create pipeline. |

------------

## Resources

To run Codepipeline effectively you will need the following resources configured.
| Name | Description | Type |
|------|-------------|------|
| [aws-iam-role.pipeline](https://registry.terraform.io/providers/aaronfeng/aws/latest/docs/resources/iam_role) | The IAM role that is given to pipeline to execute and run the playbook. | Terraform Resource |
[aws_iam_role_policy.pipeline_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | The policy document that grants the IAM Role the permissions needed to run pipeline. | Terraform Resource |
[aws_s3_bukcet.pipeline_artifact_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | Bucket where Pipeline artifacts are stored. | Terraform Resource |
[aws_codebuild_project.pipeline_stages](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | Codebuild projects that are executed throughout pipeline. | Terraform Resource |

------------

## Running the Module

The execution is broken down into two parts.  The AWS Codepipeline Module that can be used to build many pipelines leverage one module.  

### Step 1

First download the Module [module-aws-codepipeline](https://github.com/cwnit/toolkits/tree/master/collections/terraform/aws/aws-codepipeline/dynamic-pipeline/module-aws-codepipeline).

### Step 2

Create a new directory and copy the [module-exection](https://github.com/cwnit/toolkits/blob/master/collections/terraform/aws/aws-codepipeline/dynamic-pipeline/module-execution/main.tf) files into it.  This will allow you configure your pipeline to generate the dynamic elements your team needs.

**main.tf**

```
module "code_pipeline" {
  source        = "../module-aws-codepipeline"
  AppName       = "My_new_pipeline"
  code_pipeline = local.code_pipeline
}
```

#### Configuring  your local.tf

Sample local.tf is avaiable for detail configuration setup.

**Environment Variables**
When your stage requires `Configuration | EnvironmentVariables` it will need to have those variables defined per stage.  Within the local.tf file you can define your environment variables.  Note that your enviornment variables are json variables and require the following format:

```

    action_name_stage_refernece_variables = [
        {
            name  = "name of your variable"
            type  = "PLAINTEXT"
            value = "your variable value"
        }
    ]
```

to add another variable just add a comma `,`.  See local.tf for a example.

**Configuring Stages**

The dynamic pipeline is centered around stage management.  Remember stages are the grouping and actions live within stages.  Define your stages and create the stage outline.  Within each state you will need to fill in the necessary configurations.

```

stages = {
    stage_1 = {
        name = "source"
        .
        ..
        ...
    }
    stage_2 = {
        name = "build"
        .
        ..
        ...
    }
    stage_3 = {
        name = "validation"
        .
        ..
        ...
    }
    stage_4 = {
        name = "deploy"
        .
        ..
        ...
    }
}


```

Note that the stages must be wrapped in brakcets `{ }` to capsulate it properly to meet the map variable designation.  

**Configuring Actions**

Actions are configured inside the each stage.  Note that you can have multiple actions within a stage and you can determine the run order of each action.  

```
stages = {
    stage_1 = {
        name = "source"
        actions = {
            action_1 = {
                run_order = 1
                name = "source_code_download"
                .
                ..
                ...
            },
            action_2 = {
                run_order = 2
                name = "linting_action"
                .
                ..
                ...
            }  
        }
    }
```

Note that multple actions must be seperated by commas

------------

## Public domain

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
