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
<a href="https://github.com/cwnit/toolkits/blob/master/collections/terraform/aws/secrets_management/simple_secret.tf)">simple_secret.tf</a> </td>
<td>The module allows users to create a simple secret in AWS Securets Manager.  Please note this is a single secret and not a key/value pair.  Refer to keyvalue seceret creation module to create a key/value secret. </td>
<td>
<p><em><strong>Limits:</strong></em> To create the secret your account will require permissions to make changes to secrets manager.  </p>
<br><p><em><strong>Input:</strong></em>&nbsp;" Leverage the sample variables.tf that outlines the variables that need to be chnaged in order for you to execute module correctly.  All variables that must be updated with be marked with em><strong>[Enter here]</strong></em>.
<br>Result:</strong></em>&nbsp;Secret will be created with unique password that is stored in secrets manager.</p> 
</td>
</tr>

</tbody>
</table>

[top](#top)


# Usage
Googlescript requires a foundational understanding of Javascript.  For those of you just getting started please visit this free tutorial that walks you through Javascript basics.

# Developer Information
| Material description | URL |
| ---------- | ------------ |
| Terraform basics | [Link](https://learn.hashicorp.com/terraform) |
| Terraform Secrets Manager Developer Reference | [Link](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) |
| Terraform developer guides | [Link](https://semaphoreci.com/blog/terraform) |



[top](#top)
