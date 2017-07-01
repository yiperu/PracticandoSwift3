//: Playground - noun: a place where people can play

import UIKit

protocol Talking {
  func sayHello()
}

extension Talking {
  func sayHello() {
    print("Hola..")
  }
}

class Human: Talking {

}

class Dog {

}

extension Dog: Talking {
  func sayHello() {
    print("Gua Gua..")
  }
}

let me = Human()
me.sayHello()

let firulays = Dog()
firulays.sayHello()


		