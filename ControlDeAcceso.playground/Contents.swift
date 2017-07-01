//: Playground - noun: a place where people can play

import UIKit  // importan modulos

// Control de acceso define la visivilidad
// Que metodos o variables seran publicos o privados

public class publicClass{} // todos lo puede ver acceder y llamar
internal class InternaClass {}  //
fileprivate class FilePrivateClass {}
private class PrivateClass {}  // solamente los que envuelven al definicion lo pueden ver


public var variablePrivada = "" // totalmente abierto
internal var internalVar = ""  // solo abierto a los q estande dentro del modulo
fileprivate var filePrivateVar = "" // solo abierto a los que estan
private var privateVar = ""  // solo abierto dentro de las llaves




