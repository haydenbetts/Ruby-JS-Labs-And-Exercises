$(document).ready( function() {

    //$("#fetched-json").html(JSON.stringify(fetched_json,null,'\t'))
    ajax("Albert Einstein")

})

  function showFetchedJSON(json){
    $("#fetched-json").append(JSON.stringify(json,null,'\t'))
    $("#parsed-json").append(JSON.stringify(jsonParser(json),null,'\t'))
  }
   // parsed-json is id
  function jsonParser(json) {
    var pageid = Object.keys(json["query"]["pages"])[0]
    var title = json["query"]["pages"][pageid]["title"]
    // for each title in links
    var menu = json["query"]["pages"][pageid]["links"].map(function (value) {
      var obj = new Object()
      obj.title = value["title"]
      obj.menu = null
      return obj
    })

    var final_json_obj = new Object()
    final_json_obj.title = title
    final_json_obj.menu = menu
    return final_json_obj
    }

  // should out put json of form
  // { "title": "Albert Einstein",
    //    "menu":  [
    // {
    // "ns": 0,
    // "title": "20th Century Press Archives"
    // },
    // {
    // "ns": 0,
    // "title": "2dF Galaxy Redshift Survey"
    // }]
    // }
function ajax(keyword) {
  $.ajax({
          // request type ( GET or POST )
    type: "GET",

          // the URL to which the request is sent
    url: "https://en.wikipedia.org/w/api.php",
    data: {
    	"action": "query",
    	"format": "json",
    	"prop": "links",
    	"titles": keyword,
    	"pllimit": "20"
      },
          // The type of data that you're expecting back from the server
    dataType: 'json',

          // Function to be called if the request succeeds
    success: function( jsondata ){
     showFetchedJSON(jsondata);
    }
  });
}

// this handles CORS
jQuery.ajaxPrefilter(function(options) {
  if (options.crossDomain && jQuery.support.cors) {
  options.url = 'https://cors-anywhere.herokuapp.com/' + options.url;
  }
});

var fetched_json = {
    "continue": {
        "plcontinue": "736|0|Absorption_refrigerator",
        "continue": "||"
    },
    "query": {
        "pages": {
            "736": {
                "pageid": 736,
                "ns": 0,
                "title": "Albert Einstein",
                "links": [
                    {
                        "ns": 0,
                        "title": "20th Century Press Archives"
                    },
                    {
                        "ns": 0,
                        "title": "2dF Galaxy Redshift Survey"
                    },
                    {
                        "ns": 0,
                        "title": "A priori and a posteriori"
                    },
                    {
                        "ns": 0,
                        "title": "Aage Bohr"
                    },
                    {
                        "ns": 0,
                        "title": "Aarau"
                    },
                    {
                        "ns": 0,
                        "title": "Aargau"
                    },
                    {
                        "ns": 0,
                        "title": "Abba Eban"
                    },
                    {
                        "ns": 0,
                        "title": "Abdominal aortic aneurysm"
                    },
                    {
                        "ns": 0,
                        "title": "Abdus Salam"
                    },
                    {
                        "ns": 0,
                        "title": "Absent-minded professor"
                    }
                ]
            }
        }
    }
}
