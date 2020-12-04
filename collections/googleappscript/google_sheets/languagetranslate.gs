function LangTrans(strtext,fromLang,toLang)
{
 
  //Language codes:  https://cloud.google.com/translate/docs/languages
  var transLang = LanguageApp.translate(strtext, fromLang, toLang);
  
  return transLang;
  
}