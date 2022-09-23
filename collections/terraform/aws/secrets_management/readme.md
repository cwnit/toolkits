# <a name="top">CWN Terraform Secrets Management Library Library</a> 

| <img src="./aws/images/aws.png"   width="135px" height="100px">  | The CWN library for secrets management provides examples leveraging terraform deployments for AWS Secrets Manager and AWS Parameter Store |
| :-------------- | :----------- | 

## Table of Contents

- [Repository contents](#repository-contents)
- [Usage](#usage)
- [Developer Information](#Developer-Information)


## Repository contents

<table border="0" cellspacing="0">
<tbody>
<tr>
<td align="top"><strong>Name of Module</strong></td>
<td align="top"><strong>Description</strong></td>
<td align="top"><strong>Usage</strong></td>
</tr>
<tr>
<td> 
<a href="https://github.com/cwnit/toolkits/blob/master/collections/terraform/aws/secrets_management/simple_secret.tf">simple_secret.tf</a> </td>
<td>The module allows users to create a simple secret in AWS Securets Manager.  Please note this is a single secret and not a key/value pair.  Refer to keyvalue seceret creation module to create a key/value secret. Note that the secret uses a unique resource to create a random secret which is called resource "random_password".  The resource can be removed if the intention is to pass the secret in.  Reference the article Handling Terraform Secrets to understand how to pass values in.  For more information about the random_password resource reference <a href="https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string">hashicorp details page.</a> </td>
<td>
<p><em><strong>Limits:</strong></em> To create the secret your account will require permissions to make changes to secrets manager. </p>

<br><p><em><strong>Input:</strong></em>&nbsp;Variables in the variables.tf that need to be updated will be marked with <strong>[Enter here]</strong></em>.  Be sure that in the simple_secret.tf, you update information where designated as "your" information.  This will be critical to execution.

<br><p><em><strong> Result:</strong></em> &nbsp;Secret will be created with unique password that is stored in secrets manager.</p> 
</td>
</tr>
<tr>
<td> 
<a href="https://github.com/cwnit/toolkits/blob/master/collections/terraform/aws/secrets_management/keyValue_secret.tf">keyValue_secret.tf</a> </td>
<td>The module allows users to create a key / value secret that can be stored in AWS Secrets Manager. Note that the secret uses a unique resource to create a random secret which is called resource "random_password".  The resource can be removed if the intention is to pass the secret in.  Reference the article Handling Terraform Secrets to understand how to pass values in.  For more information about the random_password resource reference <a href="https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string">hashicorp details page.</a> </td>
<td>
<p><em><strong>Limits:</strong></em> To create the secret your account will require permissions to make changes to secrets manager.</p>
<br><p><em><strong>Input:</strong></em>&nbsp;" Leverage the sample variables.tf that outlines the variables that need to be chnaged in order for you to execute module correctly.  Variables in the variables.tf that need to be updated will be marked with <strong>[Enter here]</strong></em>.  Be sure that in the keyValue_secret.tf, you update information where designated as "your" information.  This will be critical to execution.
<br><p><em><strong>Result:</strong></em>&nbsp;Secret will be created with unique Key / Value pairs witin Secrets Manager.</p> 
</td>
</tr>

</tbody>
</table>

[top](#top)


# Usage
Terraform is hcl language that is supported by Hashicorp.  For those of you just getting started please visit this tutorials and links provided int the Developer Information table that can help you understand fundmental basics of the language.

# Developer Information
| Material description | URL |
| ---------- | ------------ |
| Terraform basics | [Link](https://learn.hashicorp.com/terraform) |
| Terraform Secrets Manager Developer Reference | [Link](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) |
| Terraform developer guides | [Link](https://semaphoreci.com/blog/terraform) |
| Handling Terraform Secrets | [Link](https://blog.gruntwork.io/a-comprehensive-guide-to-managing-secrets-in-your-terraform-code-1d586955ace1) |



[top](#top)
