# <a name="top">CWN System Management Powershell Library</a> 

<table style="width: 300px; float: left;" border="0" cellspacing="0">
<tbody>
  <tr>
    <td> </td>
    <td>CWN has published scripts that can help system Administrators with their daily work routines.</td>
 </tr>
</tbody>
</table>

## Table of Contents

- [Repository contents](#repository-contents)
- [Usage](#usage)


[top](#top)

## Repository contents
| Name of Module | Description | 
| :-------- | :----------- | 
| [**keepalive.ps1**](https://github.com/cwnit/toolkits/blob/master/collections/powershell/system_management/keepalive.ps1) | The script can help keep your Windows logons active and ready for work. It simply activates then deactivates the Scroll Lock button every four minutes. This sends a signal to the operating system that someone (technically something) is using the computer and thus your session remains alive. <br> <br> *__Limits:__* The script should be saved to your MyDocuments folder so it funs with least privilleged, you must be able to run a powershell script.   <br><br> *__Instructions:__* Open Notepad, copy the code from the repository and paste the code into notepad file. >> Save file as keepalive.ps1 >> double click to execute, Powershell window must remain On so minimize the screen in order to maintain productivity.  <br> <br> *__Disclaimer:__*  CWN encourage this for engineers in a work-from-home environment, or when connecting to a remote Windows system via Remote Desktop, for maintaining productivity for long hours doing migrations or sessions subject to mulitple RDP Sessions over extended periods of time.  CWN DOES NOT recommend circumventing security settings mandated for business operations; not only might that violate policy, but may possibly result in disciplinary action.  Engineers should be mindful that if ran on your local computer your Windows sessions will be fully available to anyone who accesses the keyboard and mouse, whether it's you or not.  Always disable this script if you plan to walk away from your worksation. |

# Usage
Googlescript requires a foundational understanding of Javascript.  For those of you just getting started please visit this free tutorial that walks you through Javascript basics.

## Developer Information ##
| Material description | URL |
| ---------- | ------------ |
| Powershell Basics | [Link](https://docs.microsoft.com/en-us/learn/modules/introduction-to-powershell/) |
| Powershell developer reference | [Link](https://devblogs.microsoft.com/scripting/table-of-basic-powershell-commands/) |
| Powershell developer guides | [Link](https://docs.microsoft.com/en-us/powershell/scripting/developer/prog-guide/windows-powershell-programmer-s-guide?view=powershell-7.2) |



[top](#top)
