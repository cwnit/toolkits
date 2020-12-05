function DeleteSheetTabs(searchkey) 
{
    
    // strsheetname is the sheet that you don't want to delete sheet

    var ss = SpreadsheetApp.getActiveSpreadsheet() //Declare current worksheet
    var sheets = ss.getSheets() //get all the sheets
    var valid
    var i = 0

    for(i in sheets) 
    {
        var name = sheets[i].getName(); //get name of the worksheet in the array
        
        valid = MatchMyText(searchkey,name)
       
        if(valid != true) {
     
        ss.deleteSheet(sheets[i]);
     };
   
   }
}