var json = require('./dynamic_list_2.json');


function jsonToHtmlList(json_array, accumulator) {

  // just fire if the this function has been called with
  // an indent. That only happens on recursive calls :)
  if (!accumulator){
    accumulator = document.body
  }

    for (var i in json_array) {
      for (key in json_array[i]) {
        if (key === "title") {
          li = document.createElement("li")
          li.innerText = (key + " -> " + json_array[i][key])
          accumulator.appendChild(li)
      }
      else if (json_array[i][key]) {
        ul = document.createElement("ul")
        li.appendChild(ul)
        jsonToHtmlList(json_array[i][key], ul)
      }
    }
  }
}

jsonTabber(json)
