import UIKit

//Ciclo for in

let someInts : [UInt] = [1,2,4,5,6,7,8]
for idx in someInts{
    print(idx, terminator: " ")
}
print(" ")

let numberOfLegs : [String : UInt] = ["Spidre" : 8, "Ant" : 6, "Dog" : 4]
for (name, leg) in numberOfLegs{
    print("Animal \(name) has \(leg) legs")
}

for idx in stride(from: 0, to: 100, by: 5){
    print(idx, terminator: " ")
}
print(" ")


let threeHours = 3
let emoji = ["🕒","🕕","🕘","🕛"]
var i = 0

for idx in stride(from: 3, to: 13, by: threeHours){
    print("\(idx) : 00 -> \(emoji[i])")
    i += 1
}

//Ciclo While
var ten = 0
while ten <= 10{
    ten += 1
}
print(ten)

repeat {
    ten += 1
} while ten <= 10

print(ten)


//var numero : UInt8 = 2
//var primo : [UInt8] = [UInt8]()
//var I : UInt8
//var Count : UInt8
//
//for _ in 1...100{
//    I = 1
//    Count = 0
//    while I <= numero{
//        if numero%I == 0 {
//            Count += 1
//        }
//        I += 1
//    }
//    if Count > 2 {
//        numero += 1
//    } else {
//        primo.append(numero)
//        numero += 1
//    }
//}
//
//print(primo)


//Switch

let someCharacter : Character = "z"

switch someCharacter {
case "a", "A" :
    print("Es La letra A")
case "z", "Z":
    print("Es la letra Z")
default:
    print("No es ningula de las dos")
}

let cars : UInt8 = 50

switch cars{
case 0:
    print("No hay autos")
case 1..<5:
    print("Hay pocos autos")
case 5..<10:
    print("Hay algunso autos")
case 10..<25:
    print("Hay autos")
case 25..<50:
    print("Hay muchos autos")
default:
    print("Hay muchiiiisimos autos")
}
