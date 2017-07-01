//: Playground - noun: a place where people can play

import UIKit

let message1 = (876, "Error")

let message2 = (code: 879, message: "Error")

func logs(mesa: (Int, String)) {
  print("Error code: \(mesa.0)")
  print("Error code: \(mesa.1)")
}

logs(mesa: message1)
logs(mesa: message2)

func howCool(_ value: Int) -> (String, Int) {
  if value > 100 {
    return ("Super Cool", value)
  } else {
    return ("Meh", 0)
  }
}

let cool = howCool(101)
cool.0
cool.1


