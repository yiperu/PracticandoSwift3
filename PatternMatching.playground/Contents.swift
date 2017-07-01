//: Playground - noun: a place where people can play

import UIKit

// en Swift _ significa cualquier cosa
// o no importa que es lo que viene, entero, vacio, etc
// El pattern Matching en programacion funcional es muy importante
// 

let p = (1,2)

switch p {
case (0,0):
  "origin"
//case (1,_):
//  "one"
case (1,2):
  "one and two"
default:
  "?"
}

let pu = (1, 2, 3)
let first = pu.0

let (f, _, t) = pu
f  // 1
t  // 3






