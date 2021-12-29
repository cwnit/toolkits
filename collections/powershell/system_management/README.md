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
| [**columindexbynameandrow.gs**](https://github.com/cwnit/toolkits/blob/master/collections/googleappscript/google_sheets/columindexbynameandrow.gs) | Allow a user to search Google sheet column by name. <br> <br> *__Limits:__* Variable mysheetname must be a appscript sheet object.  <br> Variable rs must be set to 1 if no specific row is required.   <br><br> *__Input:__* "  colname:  the name of the column your searching for, this is case sensative.  Example "Variable 2" <br>  mysheet:  must be a spreadsheet object (the source) that you will be searching in.  Example var ss = SpreadsheetApp.getActiveSpreadsheet(); <br> rs:  row number where the search will start, always use default of one if you don't know where to start.  example 1  <br> <br> *__Result:__*  3 this identifies the column number where the column name lives. |
