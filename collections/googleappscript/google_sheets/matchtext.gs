function MatchMyText(mytext,mycompare)
{
  //mytext is the string value that has the string that we want to compare against
  //mycompare is the string that we want to validate and see if it exist inside my text

  var valid = 0;
  
  mytext = mytext.toString().toLowerCase();
  mycompare = mycompare.toString().toLowerCase();
  
   if(mytext.indexOf(mycompare)>-1)
   {
   
     valid = -1;
   
   
   }
   
   return valid;


}