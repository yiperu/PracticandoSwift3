//: Playground - noun: a place where people can play

import UIKit

class Animal {
  let legs = 4
}

class Pet: Animal {
  func hasOwner() -> Bool {
    return true
  }
}

var myDog = Pet()
myDog.legs

var anAnimal = myDog as Animal
anAnimal.legs
myDog.hasOwner()
//anAnimal.hasOwner() // Esto no Funciona xq no tiene method

type(of: anAnimal)

class Wild: Animal {
  func hasOwner() -> Bool {
    return false
  }
}

var collection = [Animal(), Pet(), Pet(), Pet()] as [Any]
let animal = collection[0]
type(of: animal)

// Con la palabra reservada "is" check type of class
if animal is Animal {
  "An Animal"
} else {
  "Other type"
}

let wild = collection.last as? Wild
wild?.hasOwner() // Como es Pet, es un nil
//let wild2 = collection.last as! Wild
//wild2.hasOwner()





