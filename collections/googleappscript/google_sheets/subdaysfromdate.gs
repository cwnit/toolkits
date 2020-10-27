function subDaysFromDate(date,d)
{
  // d = number of day to substract from the start date
  // date = date from which days are subttracted, must be in Google date format.
  
  var result = new Date(date.getTime()-d*(24*3600*1000));
  return result
}
