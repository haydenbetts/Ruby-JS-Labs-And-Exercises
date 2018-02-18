var dict = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

function alphabetPosition(text) {
  var final_text = ""

for (var i = 0, len = text.length; i < len; i++) {

      if (dict.indexOf(text.charAt(i))) {
        final_text += ` ${dict.indexOf(text.charAt(i)) + 1}`
      }
      else if (dict.indexOf(text.charAt(i).toLowerCase())) {
        final_text += ` ${dict.indexOf(text.charAt(i).toLowerCase()) + 1}`
      }
    }
  console.log(final_text);

}

alphabetPosition("The sunset sets at twelve o' clock.")
