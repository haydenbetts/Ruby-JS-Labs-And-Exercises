var menu =
    [
      {
        "title": "Role",
        "menu": [
                {
                    "title": "Guest",
                    "menu": [
                            {
                                "title": "Hayden",
                                "menu": null
                            },
                            {
                                "title": "Zeus",
                                "menu": null
                            },
                            {
                              "title": "Ivan",
                              "menu": null
                            }
                            ]
                },
                {
                    "title": "Site Manager",
                    "menu": [
                      {
                        "title": "Tom",
                        "menu": null
                      },
                      {
                        "title": "Maureen",
                        "menu": null
                      }
                    ]
                },
          {
            "title": "Admin",
            "menu": [
              {
               "title": "Admin",
                "menu": null
              }
              ]
          }
          ]
          },
      {
      "title": "Config",
      "menu": null
      }
      ]

var menu2 = [
    {
        "title": "Role",
        "menu": [
                {
                    "title": "Guest",
                    "menu": [
                            {
                                "title": "Hayden",
                                "menu": null
                            },
                            {
                                "title": "Zeus",
                                "menu": null
                            },
                            {
                              "title": "Ivan",
                              "menu": null
                            }
                            ]
                }
          ]
}
]

var list = document.createElement("ul")
document.body.appendChild(list)

function mapArray(json_array) {
  json_array.forEach( function(value){
    menuIterate(value)
  })
}


function menuIterate(menu_json) {
  var li = document.createElement("li")

  for (var key in menu_json) {
   if (key == "title") {
     li.innerText = menu_json[key]
   }
    // the nest menu case it will be an array
    else if (menu_json[key]) {
      var ul = document.createElement("ul")
      debugger
      ul.innherHtml = mapArray(menu_json[key])
      li.appendChild(ul)
    }
    else {
      return li
    }
  }
}

list.appendChild(mapArray(menu2))

// function menuIterate(menu_json_array) {
//   for (var i in menu_json_array) {
//     var menu_json_parsed = JSON.parse(menu_json_array[i])

//     for (var key in menu_json_parsed) {
//       if (key == "title") {
//         var elem = document.createElement("li")
//         elem.innerText = menu_json_parsed[key]
//         list.appendChild(elem)
//       }
//       // the case of we have another menu
//       else if (obj[key]) {
//           var ul = document.createElement("ul")
//           ul.innerHtml =
//           menuIterate(menu_json_array)
//       }
//       // the case of we havee no other menu
//       else {

//       }
//     }
//   }
// }
