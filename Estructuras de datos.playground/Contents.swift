import UIKit

//Estrucutras de datos

//Arreglos
var someInts = [Int]()
someInts.count
someInts.append(10)
someInts = []
someInts.count

var someDoubles = Array(repeating: 99, count: 9)
someDoubles.count

var otherDoubes = Array(repeating: 33, count: 3)
otherDoubes.count

var aLotOfDoubles = someDoubles + otherDoubes
aLotOfDoubles.count

var shoppingList : [String] = ["Tostadas", "Aguacate"]
shoppingList.count

shoppingList.isEmpty ? print("Lista de compras vacia") : print("Lista de compra con productos")

shoppingList.append(contentsOf: ["Coca cola", "Frijoles"])
shoppingList.append("Carnita asada")
shoppingList += ["Tortillas", "Queso"]
shoppingList.count

shoppingList[0] = "Salchichas"
shoppingList.remove(at: 1)
shoppingList.removeLast()

for idx in shoppingList{
    print(idx, terminator: " ")
}
print("")
for (idx, item) in shoppingList.enumerated(){
    print("\(idx+1) : \(item)")
}


//Colecciones (Sets)
var letters : Set<Character> = Set<Character>()
letters.count

letters.insert("A")
letters.count

var ingredients : Set<String> = ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"]

if ingredients.isEmpty{
    print("ingredienes esta vacio")
}

if let ingredientRemove = ingredients.remove("Ingrediente 2"){
    print("El \(ingredientRemove) fue eliminado")
}
ingredients

if ingredients.contains("Ingrediente 1"){
    print("Si exite")
}

for idx in ingredients.sorted(){
    print(idx)
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
evenDigits.union(oddDigits).sorted()

oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers)
oddDigits.intersection(primeNumbers)

//Diccionarios
var nameOfInts : [Int : String] = [Int : String]()
nameOfInts[15] = "Quince"

var woman : [String : String] = ["Madre" : "Erika", "HijaM" : "Paola", "Hija" : "Paulana"]
woman.count

woman["Tia"] = "Pilar"

woman.count

if let oldValue = woman.updateValue("Michelle", forKey: "HijaM"){
    print(oldValue)
}

if let value = woman["Madre"]{
    print(value)
}

woman["Madre"] = nil

woman

woman["Hijo"] = "Victor"

woman

if let valueRemove = woman.removeValue(forKey: "Hijo"){
    print(valueRemove)
}

for (key, value) in woman{
    print("\(key) : \(value)")
}

for key in woman.keys{
    print(key)
}

for value in woman.values{
    print(value)
}

//generadon un arreglo
let arregloDic = [String](woman.values)

