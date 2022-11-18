
# <a name="top">CWN Terraform AWS Library</a> 


# About
CWN has created a project supporting terraform modules for AWS that can help automate job functions.  Our goal is to provide usable code that can quicky be integrated into your standard work day or projects.  The Terraform AWS Project focuses on identify helpful tools and complex runbooks that can be show cased real-time.

----

## Requirements
Leveraging any of the playbooks or modules will require that users have the AWS environment configured locally within their environment.  The dependencies outlined for these code types will also be required depending on the module or file type in use.  


----

## Repository Contents

This repository consists of the following Files and Modules.

| File Name | Language | Description |
| :-------- | :------: | :---------- |
| `AWS Codebuild` | Terraform | Playbooks that show how to leverage AWS Codebuild. |
| `AWS Codepipeline` | Terraform | Playbooks that show case different use cases for AWS Codepipeline. |
| `sample-rdp-deployment` | Terraform | Playbook that deployes an entire environment which includes ec2 instances. |
| `secrets_management` | Terraform | Repository that showcases various methods to leverage secrets using terraform witin AWS |

----
## Dependencies

Provider | Version | Source |
:------- | :------ | :-----:
| Terraform | 1.2.0 | [Download](https://releases.hashicorp.com/terraform/) |
| hashicorp/aws | 4.13 | [Download](https://registry.terraform.io/providers/hashicorp/aws/4.13.0) |
| Powershell Core | 7.2.6 | [Download](https://github.com/PowerShell/PowerShell/releases/tag/v7.2.6) |
| AWS Tools Secret Manager | 4.1.15.0 | [Download](https://www.powershellgallery.com/packages/AWS.Tools.SecretsManager/4.1.15.0) |
| AWS Tools Common | 4.1.188 | [Download](https://www.powershellgallery.com/packages/AWS.Tools.Common/4.1.188) |


## References

These links were used to reference the creation of this module.

| Name | Type of Reference | Description | URL |
| :--- | :---------------- | :---------- | :-- |
| [terraform-aws-lambda](https://github.com/terraform-aws-modules/terraform-aws-lambda/blob/master/main.tf) | terraform-aws-modules | Terraform example of Lambda usage. | [Link](https://github.com/terraform-aws-modules/terraform-aws-lambda/blob/master/main.tf) |

## Public domain

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.