function DeleteSheetTabs(strsheetname) 
{
    
    // strsheetname is the sheet that you don't want to delete sheet

    var ss = SpreadsheetApp.getActiveSpreadsheet()
    var sheets = ss.getSheets() //get all the sheets
    var valid
    var i = 0

    for(i in sheets) 
    {
        var name = sheets[i].getName();//get name of last sheet
        
        valid = MatchMyText(strsheetname,name)
       
        if(valid != true) {
     
        ss.deleteSheet(sheets[i]);
     };
   
   }
}