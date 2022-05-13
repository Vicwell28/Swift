import UIKit

func saludar(nombre Persona : String) -> String{
    let saludo : String = "Hola, \(Persona)"
    return saludo
}

saludar(nombre: "Victor")

func nuevoSaludo(Persona : String, Edad : Int, Hombre : Bool) -> String{
    if Hombre {
        
        return Edad > 18 ? "Hola sr \(Persona)" : "Hola peque \(Persona)"
        
    } else {
        
        return Edad > 18 ? "Hola sra \(Persona)" : "Hola peque \(Persona)"
        
    }
}

nuevoSaludo(Persona: "Melissa", Edad: 19, Hombre: false)

func printAndCount(frase : String) -> (Int, String){
    let x = "\(frase)"
    let y = x.count
    
    return (y, x)
}

let res = printAndCount(frase: "Victor Miguel")
res.0




func minMax(array : [Int]) -> (min : Int, max : Int)? {
    var currentMin = array[0]
    var currentMax = array[0]

    for value in array[1..<array.count] {
    if value < currentMin{
        currentMin = value
    } else if value > currentMax {
        currentMax = value
    }
}
return (currentMin, currentMax)
}

if let resultado = minMax(array: [-1, 5, -4, 8, 7, 4, -2, 10]){
    print("El minimo es \(resultado.min). El maximo es \(resultado.max)")
}

func promedio(_ numbers : Double...) -> Double?{
    var total : Double = 0
    for number in numbers{
        total += number
    }
    
    return total / (Double)(numbers.count)
}


if let resultadoPromedio = promedio(1,2,3,4,5,6,7,8,10){
    print(resultadoPromedio)
}

var var1 = 1
var var2 = 2

func swapTwoInts(_ a : inout Int, _ b : inout Int){
    let temp = a
    a = b
    b = temp
}
print(var1, var2)
swapTwoInts(&var1, &var2)
print(var1, var2)

func incrementar(number numeroAIncrementar : inout Int, value valorAIncrementar : inout Int) -> Int{
    numeroAIncrementar = numeroAIncrementar + valorAIncrementar
    return numeroAIncrementar
}
var numeroIncrementar = 10
var numeroIncremento = 10
incrementar(number: &numeroIncrementar, value: &numeroIncremento)
numeroIncrementar


//function type

func addTwoInts(_ a : Int, _ b : Int) -> Int {
    return a + b
}

func multyplayTwoInts(_ a : Int, _ b : Int) -> Int {
    return a * b
}

var mathFunction : (Int, Int) -> Int = addTwoInts
mathFunction(1, 6)

var mathMultiplayerFunction : (Int, Int) -> Int = multyplayTwoInts

func printMathResult(_ mathfunc : (Int, Int) -> Int, _ a : Int, _ b : Int){
    print("Resultado: \(mathfunc(a,b))")
}

printMathResult(mathMultiplayerFunction, 5, 5)


func stepForward(_ input : Int) -> Int {
    return input + 1
}

func stepBackward(_ input : Int) -> Int {
    return input - 1
}


func chooseStepFunction(backward : Bool) -> (Int) -> Int{
    return backward ? stepBackward : stepForward
}

var value = 7
let moveNeareZero = chooseStepFunction(backward: value > 0)

while value != 0{
    print("\(value)...")
    value = moveNeareZero(value)
}
