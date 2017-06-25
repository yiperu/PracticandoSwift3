//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
type(of: str)

str.uppercased()

var array = [0,1,2]
//var array = [Int]()  // Array Vacio
var first = array.first
type(of: first)

// - - - - - - - - - - - -
func message(number: Int) -> String {
  return "Number: \(number)"
}

message(number: first!)

func optionalMessage(number: Int?) -> String? {
  guard number != nil else {
    return nil
  }
  return "Number \(number!)" // poner o no le !, deternima q devuelves
}

// Funciona para estos 3 tipos de argumentos:
optionalMessage(number: first)
optionalMessage(number: first!)
optionalMessage(number: nil)



