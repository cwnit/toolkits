# <a name="top">CWN Google Appscript Google Module Library</a> 

| <img src="./images/code_gas.png" width="85" height="60">  | The CWN library supports custom code modules which have been developed to help witth Google Suite code automation.  Our intention is to provide the Google community with working modules that can save time and add effiencies to teams and individuals. |
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
<td><a href="https://github.com/cwnit/toolkits/blob/master/collections/googleappscript/code_modules/deletesheetTabs.gs">deletesheetTabs.gs</a></td>
<td>The module provides developers the ability to delete all tabs. Included is the ability to exempt specific tabs based on a key value provided.  This can allow teams using sheets to create working tabs that can later be cleaned up.</td>
<td>
<p><em><strong>Limits:</strong></em> The matching variable is a key that looks for any sheet that has the keyword in it. Any sheet that doesn't have the keyword will be deleted. You will need to grant the sheet permissions to delete and modify the sheet. Requires minimum editor access. The function also references the  <a href="https://github.com/cwnit/toolkits/blob/master/collections/googleappscript/google_sheets/matchtext.gs">matchtext.gs</a> function which is required for the key searchkey to work properly.</p>
<p><em><strong>Input:</strong></em>&nbsp;" searchkey: is the key word being searched for.<br /><br /><em><strong>Result:</strong></em>&nbsp;All sheets that do not have the search key in them are deleted.</p> 
</td>
</tr>
<tr>
<td><a href="https://github.com/cwnit/toolkits/blob/master/collections/googleappscript/code_modules/testOnSubmit.gs">testOnSubmit.gs</a></td>
<td>The module is handy to support On Submit event triggers in Google. Works very well when testing Form submissions without having to constantly enter a new form submission.&nbsp;</td>
<td>
<p><em><strong>Limits:&nbsp;</strong></em></p>
<ul>
<li>The form requires a Google Sheet where the data is stored.</li>
<li>This sheet must be opened since the function looks for the active tab that you are working in.</li>
<li>Note your cursor defines what row will be pulled in so make sure you put your cursor on the row where you want to invoke the call from.</li>
</ul>
<p><em><strong>Input: </strong></em>No variables are needed for this. You <strong>MUST</strong> be in an active Worksheet, on the active tab, on the active row you are testing.</p>
<p><strong>Result:</strong> Simulation of the OnSubmit functions from a form.</p>
</td>
</tr>
</tbody>
</table>

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
