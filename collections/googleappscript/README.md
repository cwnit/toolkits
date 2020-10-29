<p align="Left">
  <img src="./images/create-a-google-apps-script.jpeg" width="200" height="200">

</p>

Google Appscript Types:

A container-bound script is bound to Google Spreadsheet, Google Doc or any other UI that allows user interaction. In such case, you can access the UI in the code and add custom menus to the UI that will invoke methods in your script once the user clicks on that menu. The disadvantage is that you need to know if it is a Spreadsheet or Doc since the UI class differs. You also need to instruct the user to enter his or her credentials using the custom menu. There is a very nice instruction online. The following code snipped is inspired by the instruction. Make sure to create a trigger for onOpen.
