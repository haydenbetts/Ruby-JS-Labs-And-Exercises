function iterativeLog(array) {
  array.forEach((element, index) => {
    console.log(`${index}: ${element}`)
  });
}

function iterate(call_back) {
  var array = ['hello!']
  array.forEach(call_back)

  return array
}

function doToArray(array, call_back) {
  array.forEach(call_back)
}
