$(document).ready( function() {

    //$("#fetched-json").html(JSON.stringify(fetched_json,null,'\t'))
    //ajax("Adam Riess")
    //showFetchedJSON(fetched_json)
})

  // function showFetchedJSON(json){
  //   //$("#fetched-json").append(JSON.stringify(json,null,'\t'))
  //   var parsed = jsonParser(json)
  //   $("#parsed-json").append(JSON.stringify(parsed,null,'\t'))
  //   iterateParsedJSON(parsed)
  // }
   // parsed-json is id

   function toRunAfterAjax(unparsed_json){
     var parsed_json = jsonParser(unparsed_json)
   }

  function iterateParsedJSON(parsed_json){
    // will return json to parse
    for (i in parsed_json["menu"]) {
      // have the ajax parse itself on successful return
      // and pass parsed json into this function
      ajax(parsed_json["menu"][i]["title"])
    }
  }


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
     toRunAfterAjax(jsondata);
    }
  });
}

// this handles CORS
jQuery.ajaxPrefilter(function(options) {
  if (options.crossDomain && jQuery.support.cors) {
  options.url = 'https://cors-anywhere.herokuapp.com/' + options.url;
  }
});

var fetched_json =     {
	"title": "Albert Einstein",
	"menu": [
		{
			"title": "20th Century Press Archives",
			"menu": null
		},
		{
			"title": "2dF Galaxy Redshift Survey",
			"menu": null
		},
		{
			"title": "A priori and a posteriori",
			"menu": null
		},
		{
			"title": "Aage Bohr",
			"menu": null
		},
		{
			"title": "Aarau",
			"menu": null
		},
		{
			"title": "Aargau",
			"menu": null
		},
		{
			"title": "Abba Eban",
			"menu": null
		},
		{
			"title": "Abdominal aortic aneurysm",
			"menu": null
		},
		{
			"title": "Abdus Salam",
			"menu": null
		},
		{
			"title": "Absent-minded professor",
			"menu": null
		},
		{
			"title": "Absorption refrigerator",
			"menu": null
		},
		{
			"title": "Action-angle variables",
			"menu": null
		},
		{
			"title": "Adam Riess",
			"menu": null
		},
		{
			"title": "Adiabatic invariant",
			"menu": null
		},
		{
			"title": "Adolf Hitler",
			"menu": null
		},
		{
			"title": "Aether theories",
			"menu": null
		},
		{
			"title": "African-American Civil Rights Movement (1896–1954)",
			"menu": null
		},
		{
			"title": "African Americans",
			"menu": null
		},
		{
			"title": "Afterlife",
			"menu": null
		},
		{
			"title": "Age of the universe",
			"menu": null
		}
	]
}
