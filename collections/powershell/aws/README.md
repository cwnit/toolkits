# <a name="top">CWN AWS Powershell Library</a> 

<table style="width: 300px; float: left;" border="0" cellspacing="0">
<tbody>
  <tr>
    <td>
      <p align="Left"> <img src="./images/poweredby.png" width="195" height="75"> </p></td>
    <td>CWN has created a project supporting AWS Powershell modules that can help automate AWS functions.</td>
 </tr>
</tbody>
</table>

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
<tr VALIGN=TOP>
  <td> 
    <a href="https://github.com/cwnit/toolkits/blob/master/collections/powershell/aws/s3objectdownload.ps1">s3objectdownload.ps1</a> 
  </td>
  <td>
  The script is used to download S3 files from a target S3 bucket to a windows machine into the users download directory.  The script assumes that this is interactive and users can provide AWS Credentials to the script.
  </td>
  <td>
  <p><em><strong>Limits:</strong></em> Script requires that users provide necessary AWS Access Key and AWS Secret Keys in order for the script to run. Keys should have the necessary permissions to access S3 bucket.  It also assumes that Powershell is allowed to run on the machine and that AWS Powershell module is installed on the machine where the script is being run.</p><br>
  <p><em><strong>Input:</strong></em>&nbsp; The script requires variables to be set in order to run appropriately.  The following are variables that need to be updated in order to run the script:

  ```
  $accessKey = AWS Access Key for the account where its being executed.
  
  $secretKey = AWS Secret Key for the account where its being executed.

  $region = "us-east-1" #this is te default change based on respective region.

  $bucket = "Name of the bucket you are connecting to."

  $file = "The file you wish to download."

  ```
  It should be understood that the $username will capture the local logged on user. </p>
  <p><em><strong>Result:</strong></em>&nbsp;The target file will be downloaded in the users Download directory.  This is done intentionally to ensure permissions are allowed in the event the operating system is restricted.</p>

  </td>
</tr>

<tr VALIGN=TOP>
  <td> 
    <a href="https://github.com/cwnit/toolkits/blob/master/collections/powershell/aws/s3objectupload.ps1">s3objectupload.ps1</a>
  </td>
  <td>
    The script allows users to upload files into AWS S3 Bucket from a windows machine using Powershell.  The script assumes that there is an interactive login to execute the script. 
  </td>
  <td>
  <p><em><strong>Limits:</strong></em> Script requires that users provide necessary AWS Access Key and AWS Secret Keys in order for the script to run. Keys should have the necessary permissions to access S3 bucket.  It also assumes that Powershell is allowed to run on the machine and that AWS Powershell module is installed on the machine where the script is being run.  Note that the script assumes that target file will be within the download directory.</p><br>

  <p><em><strong>Input:</strong></em>&nbsp;" The script requires variables to be set in order to run appropriately.  The following are variables that need to be updated in order to run the script:

  ```
    $accessKey = AWS Access Key for the account where its being executed.
    
    $secretKey = AWS Secret Key for the account where its being executed.

    $region = "us-east-1" #this is te default change based on respective region.

    $bucket = "Name of the bucket you are connecting to."

    $file = "The file you wish to upload."
  ```
  It should be understood that the $username will capture the local logged on user.</p><br>
  <p><em><strong>Result:</strong></em>&nbsp;The target file will be Uploaded, we suggest you in the users Download directory.  This is done intentionally to ensure permissions are allowed in the event the operating system is restricted.</p>
</tr>

</tbody>
</table>



# Usage
PowerShell 

*Source:  [Microsoft.com](https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.2)*

## Developer Information ##
| Material description | URL |
| ---------- | ------------ |
| Powershell AWS Cmdlet | [Link](https://docs.aws.amazon.com/powershell/latest/reference/index.html) |
| Powershell developer reference | [Link](https://devblogs.microsoft.com/scripting/table-of-basic-powershell-commands/) |
| Powershell AWS Tools Documentation | [Link](https://docs.aws.amazon.com/powershell/) |



[top](#top)
