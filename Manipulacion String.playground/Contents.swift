import UIKit

var greeting = "Hello, playground"

var bandera = "\u{1F1F2}"
let wiseWords = "\"la imaginacion es mas importante que el saber\" - Albert Einstaint"

print(wiseWords)

let mexico = "¡Viva \u{1F1F2}\u{1F1FD} canijos!"

print(mexico)


var str = ""
var str2 = String()

str2 = "Victor Miguel"

str2.isEmpty ? print("La variable str2 esta vacia.") : print("El valor de la variable es: \(str2)")

let myName : [Character] = ["V","i","c","t","o","r"]

for idx in myName{
    print(idx)
}

let other : Character = "!"
var lastName : String = "Basurto"
var firstName = String(myName)

lastName.append(other)

firstName.append(lastName)

let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

for idx in 0..<myName.count{
    print("\(myName[idx])", terminator: " ")
}
let number : UInt8 = 5

for idx in 0...10{
    print("\(number) * \(idx) = \(Int(number)*idx) 🤓")
}

//Indice de string
var newGreeting = "!Nuevo saludo"

newGreeting[newGreeting.startIndex]
newGreeting[newGreeting.index(before: newGreeting.endIndex)]

for idx in newGreeting.indices{
    print("\(newGreeting[idx]) position: \(idx)")
}

var saludo = "Hola"
saludo.insert(contentsOf: ", que tal?", at: saludo.endIndex)
saludo

saludo.remove(at: saludo.index(before: saludo.endIndex))
saludo

let range = saludo.index(saludo.endIndex, offsetBy: -6)..<saludo.endIndex

saludo.removeSubrange(range)
saludo

var newSaludo : String = "Victor, Miguel!"

let indexOfComa = newSaludo.firstIndex(of: ",") ?? newSaludo.endIndex
var primeraParte = newSaludo[..<indexOfComa]
primeraParte
var newStringName = String(primeraParte)

let collection = ["Act 1 Scene 1", "Act 1 Scene 2", "Act 1 Scene 3", "Act 1 Scene 4", "Act 1 Scene 5", "Act 1 Scene 6", "Act 1 Scene 7", "Act 1 Scene 8", "Act 2 Scene 1", "Act 2 Scene 2", "Act 2 Scene 3", "Act 2 Scene 4", "Act 2 Scene 5", "Act 2 Scene 6", "Act 3 Scene 1", "Act 3 Scene 2", "Act 3 Scene 3"]

var countActOne : UInt8 = 0
for idx in collection{
    if idx.hasPrefix("Act 1"){
        countActOne += 1
    }
}

countActOne

let ghost = "¡¡Fantasma!! 💀"
for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}

print("")

for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print("")

for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}





