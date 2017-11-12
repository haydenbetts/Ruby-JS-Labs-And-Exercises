var BreakException = {};

function breakOut(array, changeValue, stopValue) {

  for (var i = 0; i < array.length; i++) {
    if (array[i] == stopValue) {
      break
    }
    array[i] = changeValue
  }
  return array
}

function keepGoing(array, changeValue, skipValue) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] == skipValue) {
      continue
    }
    array[i] = changeValue
  }
  return array
}

function findBy(array, findFn) {
  // findFn returns null if no matching value found, returns the
  // value if the value found...

//   array.forEach((element, index) => {
//     if (findFn(element)) {
//       return element
//     }
//     continue
//   })
// return null

for (var i = 0; i < array.length; i++) {
  if (findFn(array[i])) {
    return array[i]
  }
  continue
}
return null

}
