# <a name="top">CWN Google Appscript Google Module Library</a> 

<table style="width: 300px; float: left;" border="0" cellspacing="0">
<tbody>
  <tr>
    <td>
      <p align="Left"> <img src="./images/code_gas.png" width="100" height="100"> </p></td>
    <td>CWN has created a project supporting Google Appscript modules designed to support code functions that can automate Google Suite actions.</td>
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
| [**deletesheetTabs.gs**](https://github.com/cwnit/toolkits/blob/master/collections/googleappscript/code_modules/deletesheetTabs.gs) | Provides the ability to delete all tabs that don't have a specific name. <br> <br> *__Limits:__* The matching variable looks for any sheet that has the key word in it.  Any sheet that doesn't have the key word will be deleted.  You will need to grant the sheet permissions to delete and modify the sheet.  Requires minium editor access.  The function also references the [MatchMyText](https://github.com/cwnit/toolkits/blob/master/collections/googleappscript/google_sheets/matchtext.gs) module which will need to be imported into your script. <br><br> *__Input:__* "  strsheetname:  is the key word being searched for.  <br> <br> *__Result:__*  All sheets with matching name are deleted. |


[top](#top)


# Usage
Googlescript requires a foundational understanding of Javascript.  For those of you just getting started please visit this free tutorial that walks you through Javascript basics.

## Developer Information ##
| Material description | URL |
| ---------- | ------------ |
| Javascript basics | [Link](https://www.w3schools.com/js/DEFAULT.asp) |
| Appscript developer reference | [Link](https://developers.google.com/apps-script/reference/) |
| Appscript developer guides | [Link](https://developers.google.com/google-ads/scripts/docs/your-first-script) |



[top](#top)

