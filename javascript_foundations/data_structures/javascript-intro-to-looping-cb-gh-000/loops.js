function forLoop(array) {

  // can also declare other vars where we declare the counter here
  for (var i = 0; i < 25; i++) {
    i === 1 ? array.push(`I am ${i} strange loop.`) : array.push (`I am ${i} strange loops.`)
  }
  return array
}

function whileLoop(num) {
  while (num > 0 ) {
    console.log(--num)
  }
  return 'done'
}

function doWhileLoop(array) {

  function maybeTrue() {
    return Math.random() >= 0.5
  }

  do {
    array = array.slice(1)
  } while (array.length > 0 && maybeTrue())
  return array
}
