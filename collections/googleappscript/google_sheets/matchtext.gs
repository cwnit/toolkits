function MatchMyText(searchkey,mytext)
{
  //mytext is the string value that has the string that we want to compare against
  //searchkey is the string that we want to validate and see if it exist inside my text

  var valid;

  mytext = mytext.toString().toLowerCase();
  searchkey = searchkey.toString().toLowerCase();
  
  
   if(mytext.toString().indexOf(searchkey)>-1)
   {
   
     valid = true;
   
   }
   else
   {
     valid = false;
   }
    
   return valid 

} 