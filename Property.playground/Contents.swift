import UIKit

struct rangoValores{
    let start : Int
    var end : Int
}

var primerRango = rangoValores(start: 0, end: 4)
primerRango.end = 5


//Lazy Stored Properties

class DataImporter{
    var filename = "data.txt"
}

class dataManager {
    lazy var importer = DataImporter()
    var data = [String()]
}

let manager = dataManager()
manager.data.append("Algo de datos")
manager.data.append("Algo de datos")
manager
manager.importer.filename
manager

struct Point{
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    var center : Point{
        //computer property
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        set{
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center
let initialSquareCenter = square.center

square.center = Point(x: 20, y: 20)

//el centro de el ractangulo

struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume : Double {
        get{
            return width * height * depth
        }
    }
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.volume
//Variables de solo lectura

enum Genero{
    case Hombre
    case Mujer
    case Indefinido
}

class Saludar{
    var genero : Genero = Genero.Indefinido
    var nombre : String = String()
    var saludar : String{
        get{
            //var saludar = saludar ?? "Pesrsona Sin Nombre"
            return "Hola \(nombre) y se bienvenido \(genero)"
        }
        set{
            nombre = newValue
        }
    }
}

var saludar = Saludar()
saludar.nombre = "Victor Miguel"
print(saludar.saludar)

//willSet //didSet

class StepCounter{
    var totalSteps : Int = 0 {
        willSet(newTotalSteps){
            print("El numero de pasos va a subir hasta el \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue {
                print("El numero de pasos ha incrementodo en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 500
stepCounter.totalSteps += 1234

struct SomeStruct {
    var counter = 0
    static var storedTypeProperty = "SOME VALUE"
    static var compuetTypeProperty : Int {
        return 1
    }
}

var instanceStr = SomeStruct()

SomeStruct.compuetTypeProperty

enum SomeEnum{
    static var storedTypeProperty = "SomeValue"
    static var computedTypeProperty : Int{
        return 5
    }
}

SomeEnum.storedTypeProperty
SomeEnum.computedTypeProperty

class someClass{
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty : Int {
        return -9
    }
    
    class var overrideableComputedTypeProperty : Int {
        return 108
    }
    
}







