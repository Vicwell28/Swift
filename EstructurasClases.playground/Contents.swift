import UIKit

var greeting = "Hello, playground"


struct someStruct{
    //la definicion de la estructura aqui
    //contenedores de datos que no hacen muchas cosas
}

class someClass{
    //la definicion de la clase aqi
}

struct Resolution{
    var width = 0
    var height = 0
}

class videoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name : String?
}

//Crar una instancia como la de Resolution()

let someResolution = Resolution()
let somevideoModes = videoMode()

someResolution.width
somevideoModes.resolution.width = 1280
somevideoModes.resolution.width

//Una estructura una ves creada ocupa un espacio en memoria y que cuanod yo la declaro como constante tiene que permanecer inmutable, al crar una instancia de una clase si podemos modificar sus propiedades, al declararla como let solo le estamso diciendo que no se va a mover de la posicion de la memoria donde se encuentra



let vga = Resolution(width: 650, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

//Hacer una copia
var cinema = hd
print("\(cinema.width) * \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) * \(cinema.height)")
print("\(hd.width) * \(hd.height)")

//Las estrucutras no tiene una referncia de donde proceden y a donde van, son espacion de memoria donde ahi se guardan sus valores
//los enumerados son tipos que tiene un valor cuando yo asigno una variable en el caso de las estructuras y enumerados lo que estoy copiando son los valores los valores van por copia

enum point {
    case norte, sur, este, oeste
}

var PuntosCardinales = point.este
var copiaPunto = PuntosCardinales
PuntosCardinales = .sur

print(PuntosCardinales)
print(copiaPunto)

let tenEighty = videoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

//las clases no son tipod de datos evaluados sino que son tipos de datos por referencia
let alsoTenEigthy = tenEighty

alsoTenEigthy.frameRate = 30.0

tenEighty


//Comparar dos objetos

tenEighty === alsoTenEigthy ? print("Son el mismo objeto") : print("Son diferentes objetos")
