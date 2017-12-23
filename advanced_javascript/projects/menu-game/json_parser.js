var json = require('./dynamic_list_2.json');


function jsonTabber(json_array, indent) {

  // just fire if the this function has been called with
  // an indent. That only happens on recursive calls :)
  if (typeof indent == 'number'){
    indent++
  }
  else {
    indent = 1
  }

    for (var i in json_array) {
      for (key in json_array[i]) {
        if (key === "title") {
        console.log(Array(indent).join("-") + key + " -> " + json_array[i][key])
      }
      else if (json_array[i][key]) {
        jsonTabber(json_array[i][key], indent)
      }
    }
  }
}

jsonTabber(json)
