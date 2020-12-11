//https://gist.github.com/chipoglesby/26fa70a35f0b420ffc23
function movesheetposition() {
    /*  Note this code is for an active sheet which means it works with one sheet only*/

    var spreadsheet = SpreadsheetApp.openById(sheetid);
    var sheet = spreadsheet.getSheetByName(sheettomove);

    // This should output 'Current index of sheet: 1'
    // Logger.log("Current index of sheet: %s", sheet.getIndex());

    spreadsheet.setActiveSheet(sheet);
    // This should output 'New index of sheet: 2'
    // Logger.log("New index of sheet: %s", sheet.getIndex())

    spreadsheet.moveActiveSheet(sheetpostion);


}

function movesheetpositionremotesheet() {




}