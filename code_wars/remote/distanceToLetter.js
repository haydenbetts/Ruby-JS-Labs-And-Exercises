const Keyboard =
[["a", "b", "c", "d", "e", "1", "2", "3"],
["f", "g", "h", "i", "j", "4", "5", "6"],
["k", "l", "m", "n", "o", "7", "8", "9"],
["p", "q", "r", "s", "t", ".", "@", "0"],
["u", "v", "w", "x", "y", "z", "_", "/"]];

// write a function that will find the distance from any position
// in this array to another position in this array.
// This includes wrapping. So,
// clicksToLetter(Keyboard, 4, 7, "b")
// should yield 3
// "/" => "a" => "b" =>



function clicksToLetter(keyboard, row, column, letter) {
  for (row; row < keyboard.length; row++) {
    for (column; column < keyboard[row].length; column++) {
      if (keyboard[row][column] == letter) {
        return row + column + 1;
      }
    }
      column = 0;
    }
  }
