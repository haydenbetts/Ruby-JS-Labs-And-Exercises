
var goodDict = {
  "Hobbits": 1,
  "Men": 2,
  "Elves": 3,
  "Dwarves": 3,
  "Eagles": 4,
  "Wizards": 10
}

var evilDict = {
  "Orcs": 1,
  "Men": 2,
  "Wargs": 2,
  "Goblins": 2,
  "Uruk Hai": 3,
  "Trolls": 5,
  "Wizards": 10
}


function mult_extractor(dict) {
  var weighted_values = [];
  for (var key in dict){
    var value = dict[key];
    weighted_values.push(value)
  }
  return weighted_values
}


function goodVsEvil(good_string, evil_string) {
  good_array = good_string.split(" ")
  evil_array = evil_string.split(" ")

  good_array_weighting = mult_extractor(goodDict)
  evil_array_weighing = mult_extractor(evilDict)

  final_good_array = []
  final_evil_array = []

  for (var i in good_array) {
   final_good_array.push(good_array[i] * good_array_weighting[i])
  }

  for (var i in evil_array) {
   final_evil_array.push(evil_array[i] * evil_array_weighing[i])
  }

  var goodsum = final_good_array.reduce((total, amount) => total + amount);
  var evilsum = final_evil_array.reduce((total, amount) => total + amount);

  if (goodsum < evilsum) {
      return 'Evil should win'
  } else if (goodsum > evilsum) {
      return 'Good should win'
  } else {
      return 'Should be a tie'
  }

}

goodVsEvil('1 1 1 1 1 1', '1 1 1 1 1 1 1')

//12 line solution..
// function goodVsEvil(good, evil) {
//   var getWorth = function( side, worth ) {
//     return side.split(' ').reduce( function(result, value, index) {
//       return result + (worth[index] * value);
//     }, 0);
//   }
//
//   var result = getWorth( good, [1,2,3,3,4,10] ) - getWorth( evil, [1,2,2,2,3,5,10] );
//
//   return result > 0 ? "Battle Result: Good triumphs over Evil" :
//          result < 0 ? "Battle Result: Evil eradicates all trace of Good" :
//                       "Battle Result: No victor on this battle field";
// }
