//: Playground - noun: a place where people can play

import UIKit

// Enums, por defecto todos los Enums son cadenas

enum Drink {
  case coffe
  case expresso
  case chocolate
  case tea
}

enum Drink2: Int {
  case coffee = 3, expresso, chocolate, tea
}
// Definir explicitamente que son String
enum DrinkString: String {
  case coffe = "co"
  case expresso = "ex"
  case chocolate = "ch"
  case tea = "te"
}

let favoriteDrink = Drink.expresso

switch favoriteDrink {
case .coffe:
  "wow"
case .chocolate:
  "yay"
default:
  "eh?"
}

//favoriteDrink.rawValue // que raro que esto ya no funcione
favoriteDrink.hashValue

let favoriteDrink2 = Drink2.expresso
favoriteDrink2.rawValue


