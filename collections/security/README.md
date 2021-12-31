# <a name="top">CWN Security Library</a> 

<table style="width: 300px; float: left;" border="0" cellspacing="0">
<tbody>
  <tr>
    <td>
      <p align="Left"> <img src="/imgs/security-scripting.png" width="195" height="75"> </p></td>
    <td>CWN has created a project that provides security aids for your organziation.  The tools here are designd to help provide the necessary mechanisms to support implementation compliance.</td>
 </tr>
</tbody>
</table>

## Table of Contents

- [Repository contents](#repository-contents)
- [Usage](#usage)


[top](#top)

## Repository contents

| Name of Module | Description | 
| :------------- | :----------- | 
| [**badpasswords.json**](https://github.com/cwnit/toolkits/blob/master/collections/security/badpasswords.json) | The list is comprised of 98,000 passwords that have been identified by the NCSC, Wikipedia and [Pwned](https://haveibeenpwned.com/Passwords) as the most commonly used passwords.  The password list should be used to augment security within your organization and can help assist your ograniztion to meet compliance with NIST-800-53 IA-5.1. <br> <br> *__Limits:__* The list is a small subset of passwords that are managed. Visit [Pwned](https://haveibeenpwned.com/Passwords) to retrieve a complete list of bad passwords.  <br><br> *__Input:__* The JSON can be downloaded and consumed through a script or third party software.  For [Micrsoft Active Directory leverage a custom DLL](https://docs.microsoft.com/en-us/windows/win32/secmgmt/installing-and-registering-a-password-filter-dll) to incorporate this into your solution.  <br> <br> *__Result:__*  The implementation will identify any of these passwords and block them from usage which will help augment / possibly satisfy the control for bad password management. |

# Usage
The tools here are toolkits that must be integrated with third party tools or custom scripts.  The description will outline usage examples and implementation examples that can assist with the development of the tool.  For questions or support about these modules please contact cit@cwnit.com.

*Source:  [Microsoft.com](https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.2)*

## Developer Information ##
| Material description | URL |
| ---------- | ------------ |
| Powershell AWS Cmdlet | [Link](https://docs.aws.amazon.com/powershell/latest/reference/index.html) |
| Powershell developer reference | [Link](https://devblogs.microsoft.com/scripting/table-of-basic-powershell-commands/) |
| Powershell AWS Tools Documentation | [Link](https://docs.aws.amazon.com/powershell/) |



[top](#top)
