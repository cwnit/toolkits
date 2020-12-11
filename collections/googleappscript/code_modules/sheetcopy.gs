function copysheet() {

    var name = "Name you want to give sheet";
    var ss = SpreadsheetApp.openById('google spreadsheet id');//Actions that are not active based on user interaction
    var sheet = ss.getSheetByName('sheet name to copy from').copyTo(ss);

    /* Before cloning the sheet, delete any previous copy */
    var old = ss.getSheetByName(name);
    if (old) ss.deleteSheet(old); // or old.setName(new Name);

    SpreadsheetApp.flush(); // Utilities.sleep(2000);
    sheet.setName(name);

    /* Make the new sheet active */
    ss.setActiveSheet(sheet);

}