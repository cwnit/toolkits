function AddDaysFromDate(date,d)
{
  // d = number of day to add
  // date = start date from which days are added, must be in Google date format.
  
  var result = new Date(date.getTime()+d*(24*3600*1000));
  return result
}
