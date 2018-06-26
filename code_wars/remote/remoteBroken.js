var tvRemote = function(word) {

  const Keyboard =
  [["a", "b", "c", "d", "e", "1", "2", "3"],
  ["f", "g", "h", "i", "j", "4", "5", "6"],
  ["k", "l", "m", "n", "o", "7", "8", "9"],
  ["p", "q", "r", "s", "t", ".", "@", "0"],
  ["u", "v", "w", "x", "y", "z", "_", "/"]];


  var buttons = word.split(''); // ['d', 't', 'z']

  var clickCount = 0;
  var currentRow = 0;
  var currentColumn = 0;

  for (var i; i < buttons.length; i++) {
    var clickState = clicksToKey(Keyboard, currentRow, currentColumn, buttons[i]);
    currentRow = clickState.currentRow;
    currentColumn = clickState.currentColumn;
    clickCount += clickState.clicks;
 }
 return clickCount;
}

function clicksToKey(keys, row, column, letter, clickCount = 0) {
      for (row; row < keys.length; row++) {
        for (column; column < keys[row].length; column++) {
            if (keys[row][column] == letter) {
                return {
                  currentRow: row,
                  currentColumn: column,
                  clicks: clickCount + row + column + 1,
                }
             }
        }
        column = 0;
      }
      clicksToKey(keys, 0, 0, letter, row + column)
   }
