// Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
//
// Examples:
//
// spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
// spinWords( "This is a test") => returns "This is a test"
// spinWords( "This is another test" )=> returns "This is rehtona test"

function spinWords(string) {
  var sepd_array = string.split(" ")
  var reversed_words = [];

  for (var i in sepd_array) {
    if (sepd_array[i].length > 4) {
      reversed_words.push(reverseWord(sepd_array[i]))
    }
    else {
      reversed_words.push(sepd_array[i])
    }
  }
   return reversed_words.join(" ")
}

function reverseWord(string) {
  var reversed_string = ""

  for (var i = string.length - 1; i > -1; i--) {
    debugger
    reversed_string = reversed_string.concat(string.charAt([i]))
  }
  return reversed_string
}

spinWords("Hey fellow warriors")
