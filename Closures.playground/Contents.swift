//: Playground - noun: a place where people can play

import UIKit

// Algo importante en los closures, es que si dentro tienes mas de una
//linea de codigo debes especificarle el return

let collection = [1,2,3,4,5,6,7]

collection.filter({(x) -> Bool in
  x % 2 != 0
})

collection.filter{ (n) -> Bool in
  print(n)
  return n % 2 != 0
}

// - - - - - - - - - - - - - - - - - - - -
func makeTea(flavorClosure: ([String]) -> String) -> String {
  print("Water 💧")
  print("Teapot")
  let flavor = flavorClosure(["Camomile","Green"])
  let message = "Finish \(flavor) tea ☕️"
  print(message)
  return message
}

makeTea { (flavors) -> String in
  return flavors[1]
}
// - - - - - - - - - - - - - - - - - - - -
func makeClosure(fruit: String) -> (_ times: Int) -> String {
  return { (times) -> String in
    var message = String()
    for _ in 0..<times {
      message += fruit
    }
    return message
  }
}

let appleMaker = makeClosure(fruit: "🍎")
let apples = appleMaker(5)

let grapeMaker = makeClosure(fruit: "🍇")
let grapes = grapeMaker(5)


		