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
final // Mostramos que final es igual a 7

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

// Lo que desaparecrio de Swift ++ --
var i = 0
//i++
//i--
//++i
//--i

i += 4
i -= 4

// Respetar el orden de losp arametros definidos (en ruby es un hash, asi que no hay probema)
func method3(a: Int = 0, b: Int = 1, c: Int = 2){}

method3()
method3(a:6, b:7, c:8)
//method3(c: 4, a: 45) // Importa el orden
method3(a: 4, c: 3)
method3(c: 3)

// How use the loop now

//before
//for var i=0; i<= 10; i++ {
//
//}

// Now
let collection = ["uno","dos","tres"]
for word in collection {
  print(word)
}

for i in 0...collection.count{
  print(i)
}

let dictionary = ["A":1, "B":12]

for e in dictionary {
  print(e.key)
  print(e.value)
}

// Tuplas
let s = (Index: 1, Value: "One")
s.Index
s.Value

print("---")
print(s.Index)
print(s.Value)




