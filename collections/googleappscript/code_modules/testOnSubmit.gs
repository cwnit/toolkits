function test_onFormSubmit() 
{

  /*
    The fucntion collectsdata for one row within the active sheet.
    It will then trigger a onsubmit event procedure to test what 
    happens when something is submitted
  */
  
  var dataRange = SpreadsheetApp.getActiveSheet().getDataRange()
  var data = dataRange.getValues();
  var headers = data[0];

  // Start at row 1, skipping headers in row 0
  for (var row=1; row < data.length; row++) {
    var e = {};
    e.values = data[row];
    e.range = dataRange.offset(row,0,1,data[0].length);
    e.namedValues = {};

    // Loop through headers to create namedValues object
    for (var col=0; col<headers.length; col++) {
      e.namedValues[headers[col]] = e.values[col];
    }
    
    // Pass the simulated event to onFormSubmit
    onFormSubmit(e);
  }
}