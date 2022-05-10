import UIKit
import Darwin

var greeting = "Hello, playground"

var str = "Hola, Juan Gabriel Gomila!"

var currentAttempot = 0;

var x = 0.0, y = 0.0, z = 0.0

let CURP = "VMBJ"

var message : String

message = "Hola, mundo! Gracias Juan Gabriel Gomila!"

var red, green, blue : Double

print(str)

 /*ß∂ƒ©ß∂ƒ©λß∂∂ßßßß∂ƒ©λ~@∑€®†¥¨ıøΩ≈ç√∫~µ
  Esto se consigue gracias a la tecla opcion o alt */


/*con coman + ctrl + espacio nos saldran emojis*/

let 🥹 = "emoji"

print("Interpolacion de string")

print("El Valor de X: \(x) Y: \(y)")

let uintMinValue8 = UInt8.min
let uintMaxValue8 = UInt8.max

let intMinValue8 = Int8.min
let intMaxValue8 = Int8.max

let uIntMinValue = UInt.min
let uIntMaxValue = UInt.max

let intMinValue = Int.min;
let intMaxValue = Int.max;

var f1 : Float = 2.14158265
var d1 : Double = 3.14159265

var meaningOfLife = 42
var pi = 3.14159

var anotherPi = 3 + 0.14159

let decimalInteger = 17 //1*10«1 7*10«0
let binaryInteger = 0b10001 // 1*2«4+0*2«3+0*2«2+0*2«1+1*2«0
let octalInteger = 0o21 //2*8«1+1*5«0
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let someNumber = 00000097.540

let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000_.000_000_1

let twoThousand : UInt16 = 2_000
let one : UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

var three = 3
var decimalNumber = 0.14159
var piNumber = Double(three) + decimalNumber

typealias AudioSample = UInt16
var maxAmplitud = AudioSample.max

let orangeAreOrange = true
let foodIsDelicious = false

var isAged : Bool
isAged = false

if isAged {
    print("Puedes entrar en la fiesta")
}
else {
    print("No puedes pasar a la fiesta")
}

var age = 31
if age >= 18{
    print("Puedes entrar a la fiesta")
}


//TUPLAS
let http404Error = (404, "Pagina no encontrada")
let (statusCode, StatusMessage) = http404Error
print("El codigo del estado es \(statusCode)")

let (justStatusCode, nada) = http404Error
print("El codigo del error es \(http404Error.0) y el mensaje es \(http404Error.1)")

let http200Status = (statusCode : 200, description : "OK")
print("El codigo del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

let pokemon = (name:"MewTwo", type:"mitico", age:100)
print("Hola humanos soy \(pokemon.name) tengo mas de \(pokemon.age) años entrenando y mi poder \(pokemon.type) los destruira a todos")
let possibleAge = "31"
let convertedAge = Int(possibleAge) //IntConSigno

var serverResponseCode : Int? = 404
serverResponseCode = nil
	
var surveyAnswer : String?
surveyAnswer = "Hola"
print(surveyAnswer)

if convertedAge != nil{
    print("La edad del usuario no es nula: \(convertedAge!)")
}
else {
    print("La edad del usuario es nula")
}

if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

let possibleString : String? = "Un string opcional"
let forceString : String = possibleString!

let assummedString : String! = "Un string unwrapped de forma implicita a partid de un optional"

let implicitString : String = assummedString

func makeASandwich() throws {
    
}

do {
    try makeASandwich()
}
catch {
        print("Algo Fallo")
}

//Aserciones (debug) y precondiciones (build)
let agex = -5
//assert(agex>=0, "La edad de una persona no puede ser negativa")

precondition(agex>=0, "La edad de una persona no puede ser negativa")
		
if agex > 10{
    print("PUedes subir a la montana rusa")
}
else if agex >= 0{
    print("Eres demasiado peque;o para subir a la montana rusa")
}
else {
    assertionFailure("La edad de una persona no uede ser negativa")
}

