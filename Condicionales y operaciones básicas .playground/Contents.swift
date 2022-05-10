import UIKit

var greeting = "Hello, playground"

let b = 10
var a = 5
a = b

//tuplas
let (x,y) = (1,2)

//Comparar con ==
if a == b {
    print("Los valores de a y b son iguales")
}

1+2
10.0/2.5
"Hello " + "World"
9%4

//Operador unario
let five = 5
let minusFive = -five

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3
number -= 2

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
2 <= 1

let name = "Victor Miguel"

if name == "Victor Miguel"{
    print("Bienvendio \(name), estas en la lista")
}else {
    print("Cuidado, el nombre: \(name) no esta en la lista")
}

(1, "Victor") < (2, "Miguel")

let day = "Lunes"
var today = "Martes"

day == today ? print("Hoy es lunes") : print("No es lunes")

let cincuent = 50
let ocho = 8
let resultado : Int?
let sumar = true

resultado = (sumar ? cincuent : ocho)

if let r = resultado {
    print(r)
}

	
var userAge : Int?
let defaultAge = 18
var ageToBeUserd = userAge ?? defaultAge
//ageToBeUsed = (userAge != nil ? userAge! : defaultAge)
var username : String?
username = "Otro nombre"
let defaultUsername = "Vicwell"
var usernameD = username ?? defaultUsername

//RANGOS
for idx in 1...5{
    print(idx)
}

for idx in 1..<5{
    print(idx)
}

let nombres = ["Victor", "Miguel", "Basurto", "Juarez"]

for idx in 0..<nombres.count{
    print(nombres[idx])
}

let xy = true

if !xy{
    print("ACCESO DENEGADO")
}

let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan {
    print("Bienvendio a la empresa")
} else {
    print("ACCESO DENEGADO")
}

let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation {
    print("Bienvendio a la fiesta")
} else {
    print("No eres bienvenido aqui…")
}

