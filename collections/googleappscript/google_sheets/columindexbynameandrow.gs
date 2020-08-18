function getColIndexByNameandRow(colName,mysheet,rs) 
{
 
  //ColName is the name of the column you are looking for
  //mysheet is the recordset for the sheet you are searching for the column
  //rs is Row Start where you want the column search to start
  
  if (rs==undefined) rs=1;
  
  var numColumns = mysheet.getLastColumn();
  var row = mysheet.getRange(rs, 1, 1, numColumns).getValues();
  for (i in row[0]) {
    var name = row[0][i];
    if (name == colName) 
    {
      return parseInt(i) + 1;
    }
  }
  return -1;
};