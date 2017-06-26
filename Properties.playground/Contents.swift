//: Playground - noun: a place where people can play

import UIKit

// las properties pueden ser mutables o inmutables
// las computer properties Estas no almacenan propiedad,simpre se calculan
// Son poderosas y muy utiles

struct Human {

  let name: String
  let birthday: String
  
  var birth: Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd-MM-yy"
    return formatter.date(from: birthday)!
  }
 
  // -- For example of properties observer
  var email: String = "" {
    willSet(newEmail){
      print("Old: \(email) New: \(newEmail)")
    }
    didSet {
      print("👍 \(email)")
    }
  }
  
  init(name: String, birthday: String) {
    self.name = name
    self.birthday = birthday
  }
}

// Las properties observers: Observadores de cambio en las propiedades
// con el tiempo

// willSet, didSet
// Los inicializadores en las structuras vienen por default
var me = Human(name: "Henry", birthday: "16-03-1970")
let calendar = Calendar.current
calendar.component(.month, from: me.birth)

me.email = "other@email.com"
me.email = "other@serv.net"


