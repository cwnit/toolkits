# <a name="top">CWN AWS Bash Library</a> 

| <img src="./images/code_gas.png"   width="135px" height="100px">  | The CWN library supports custom scripts that have been developed to help developers automate tasks.  Our intention is to provide the Linux and AWS community working scripts that can save time and add effiencies to teams and individuals. |
| :-------------- | :----------- | 

## Table of Contents

- [Repository contents](#repository-contents)
- [Usage](#usage)


[top](#top)
## Repository contents

<table border="0" cellspacing="0">
<tbody>
<tr>
<td align="top"><strong>Name of Module</strong></td>
<td align="top"><strong>Description</strong></td>
<td align="top"><strong>Usage</strong></td>
</tr>
<tr>
<td><a href="https://github.com/cwnit/toolkits/blob/master/collections/bash/aws/getlatestami.sh">getlatestami.sh</a></td>
<td>The module is designed to return the latest windows AMI id and the Red Hat AMI id. The script also exports all the AMI's that meets the requirements into a text file to compare the different files.</td>
<td>
<p><em><strong>Limits:&nbsp;</strong></em></p>
<ul>
<li>AWS CLI must be installed.</li>
<li>AWS Profile must be configured.</li>
<li>Your role must have the appropriate System Manager permissions.</li>
</ul>
<p><em><strong>Input:</strong></em> winquery: Needs to include the version of the operating system. Example: "Windows_Server-2016-English-Full-Base-2020.09.09" <br /><br />linquery: Needs to include a version of the operating system. Example: "RHEL-7.0_HVM_GA-20150209-x86_64-1-Hourly2-GP2".</p>
<p><em><strong>Result:</strong></em>&nbsp; Windows AMI number and RHEL AMI number is returned.</p>
</td>
</tr>
<tr>
<td><a href="https://github.com/cwnit/toolkits/blob/master/collections/bash/aws/readawsconfig.sh">readawsconfig.sh</a></td>
<td>The script reads the AWS credentials file pulls out variables from the file and exports them as environment variables.&nbsp;</td>
<td>
<p><em><strong>Limits:&nbsp;</strong></em></p>
<ul>
<li>The credentials file must be formatted correctly.</li>
<li>Credentials are not encrypted</li>
</ul>
<p><em><strong>Input: </strong></em>No variables are needed for this. </p>
<p><em><strong>Result:</strong></em> The variables are exported as enviorment variables.  Echo is turned on for validation but should not be included as a production script.</p>
</td>
</tr>
</tbody>
</table>

[top](#top)


# Usage
The current scripts are avaible as they are.  Please contribute back if you identify any issues.


[top](#top)
