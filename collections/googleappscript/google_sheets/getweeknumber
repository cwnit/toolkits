function getWeekNumber(d) 
{
    // d must be a starndard date format, this can not be a string or number
    
    d = new Date(Date.UTC(d.getFullYear(), d.getMonth(), d.getDate()));
  
    // Set to nearest Thursday: current date + 4 - current day number
    // Make Sunday's day number 7
    d.setUTCDate(d.getUTCDate() + 4 - (d.getUTCDay()||7));
    
    // Get first day of year
    var yearStart = new Date(Date.UTC(d.getUTCFullYear(),0,1));
    
    // Calculate full weeks to nearest Thursday
    var weekNo = Math.ceil(( ( (d - yearStart) / 86400000) + 1)/7);

    return weekNo;
}
