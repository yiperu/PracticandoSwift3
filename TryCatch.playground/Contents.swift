//: Playground - noun: a place where people can play

import UIKit

let url = URL(fileURLWithPath: "", isDirectory: false)

var data = try? Data(contentsOf: url)

do {
  data = try Data(contentsOf: url)
} catch {
  data = nil
}

enum MyMethod: Error {
  case invalidParam
  case wrongPatch
}

func method(path: String) throws -> String {
  if path.isEmpty {
    throw MyMethod.wrongPatch
  }
  return "Content"
}

