function getFirstSelector(selector) {
  var selected = document.querySelector(selector)
  return selected
}

function nestedTarget() {
  var selected = document.querySelector('#nested .target')
  return selected
}

function increaseRankBy(n) {

   var lists = document.querySelectorAll('.ranked-list')

   for (var i = 0; i < lists.length; i++) {
     var list = lists[i]
     var child_nodes = list.children

      for (var j = 0; j < child_nodes.length; j++ ) {
        child_nodes[j].innerHTML = parseInt(child_nodes[j].innerHTML) + n

      }

   }

}

function deepestChild() {
  let node = document.getElementById('grand-node')
  let nextNode = node.children[0]

  // use a while statement to get this passing...

  while (nextNode) {
    node = nextNode
    nextNode = node.children[0]
  }

  return node
}
