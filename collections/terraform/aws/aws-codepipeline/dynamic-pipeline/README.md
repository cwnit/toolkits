# terraform-dynamic-pipeline

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

## Providers

Provider | Version | Source |
:------- | :------ | :-----:
| Terraform | 1.2.0 | [Download](https://releases.hashicorp.com/terraform/) |
| hashicorp/aws | 4.35.0 | [Download](https://registry.terraform.io/providers/hashicorp/aws/4.35.0) |

## Repository Contents

This repository consists of the following Files and Modules.

| File Name | Language | Description |
| :-------- | :------: | :---------- |
| module-aws-codepipline/dynamic_pipeline.tf | Terraform | The terraform file that generates your pipeline |
| module-aws-codepipline/locals.tf | Terraform | Creates Module specific variables used in the Pipeline |
| module-aws-codepipline/variables.tf | Terraform | Pipeline variables required to execute module |
| module-execution/locals.tf | Terraform | Used to build a custom stage variable which is passed into the module. |
| module-execution/main.tf | Terraform | File used to call the module and pass in the unique stage value to create pipeline. |

## Resources

To run Codepipeline effectively you will need the following resources configured.
| Name | Description | Type |
|------|-------------|------|
| [aws-iam-role.pipeline](https://registry.terraform.io/providers/aaronfeng/aws/latest/docs/resources/iam_role) | The IAM role that is given to pipeline to execute and run the playbook. | Terraform Resource |
[aws_iam_role_policy.pipeline_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | The policy document that grants the IAM Role the permissions needed to run pipeline. | Terraform Resource |
[aws_s3_bukcet.pipeline_artifact_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | Bucket where Pipeline artifacts are stored. | Terraform Resource |
[aws_codebuild_project.pipeline_stages](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | Codebuild projects that are executed throughout pipeline. | Terraform Resource |

## Public domain

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
