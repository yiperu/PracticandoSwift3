//: Playground - noun: a place where people can play

import UIKit


// Hacer que el aparametro sea inmutable
func method(param: inout Int){
  param += 1
  print(param)
}
var n = 5
method(param: &n)
n

// 2.Curring o funciones parciales
// En los closures de Swift uya no se utilizan parametros nombrados
func cur(x: Int) -> (String) -> Float {
  return {(y: String) -> Float in
    return Float(x) + Float(y)!
  }
}

let partial = cur(x: 5)
let final = partial("2")
final

// Another way of call
cur(x: 5)("2")

// 3.Opcionales explícitos
// Nos ayudan a envolver cierta complejidad
// Una variable puede estar llena con un tipo valido o puede ser nil
// (Ejemplo o es String o es Nil)

// Este puede ser nil, pero si me lo pides te voy a entregar el valor completo
let five: Int! = 5  // Optional inplicitamente desemvuelto
type(of: five)
let other = five // esto solo es una referencia, no se esta usando
type(of: other)
let result = five + 2 // aqui si se utiliza por lo tanto se desemvielve
type(of: result)

// a los 2 tipos los llamamos validos u opcionale

// En este tipo de casos habia problemas
func method2() -> Int! { return 10 }
let resp1: [Int] = [method2()]
let resp2: [Int?] = [method2()]
//let resp3: [Int!] = [method2()]  // Esto ya no se puede
//resp3[0]!!                       // Esto ya no se puede




