//: Playground - noun: a place where people can play

import UIKit

// Genericos
// Los genericos vuelven genericas a una funcion
// todas deberian ser genericas y con una responsabilidad unica

//func addBang(param1: String, param2: String) -> String {
//  return "\(param1) . \(param2)"
//}
//
//addBang(param1: "A", param2: "B")
//
//func addBang(param1: Int, param2: Int) -> String {
//  return "\(param1) . \(param2)"
//}
//
//addBang(param1: 1, param2: 2)

// Hay Hashable y Comparable

func addBangGenerico<T,L>(param1: T, param2: L) -> String {
  return "\(param1) . \(param2)"
}

addBangGenerico(param1: 2, param2: 3)
addBangGenerico(param1: "C", param2: "D")
addBangGenerico(param1: 1, param2: "E")

