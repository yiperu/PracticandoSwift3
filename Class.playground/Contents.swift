//: Playground - noun: a place where people can play

import UIKit

// *Las estructuras son tipos de valor
// Se recomienda para la capa de modelo se usen Struct, para no modificar el original
//
class MyClass {
  var property: String = ""
  func method() -> String {
    return property
  }
}

var instance = MyClass()
instance.property = "1"
instance.method()
instance.property = "2"
instance.method()

var instanceRef = instance
instanceRef.method()
instanceRef.property = "3"
instanceRef.method()
instance.method()

struct MyStruct {
  var variable: String = ""
  func function() -> String {
    return variable
  }
}

var value = MyStruct(variable: "1")
value.function()
value.variable = "2"
value.function()

var valueRef = value
valueRef.function()
value.function()
valueRef.variable = "3"
valueRef.function()
value.function()





