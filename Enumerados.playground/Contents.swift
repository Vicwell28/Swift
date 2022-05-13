import UIKit

//enumeration -> Estructura donde puedes guardar valores. Objetos de primera clase

enum someEnumeration{
    //aqui iria la definicino del enumerado
}

enum CompassPoin{
    case north
    case south
    case east
    case west
}

enum Planet : Int{
    case mercury = 1,
    venus,
    earth,
    mars,
    jupiter,
    saturn,
    uranus,
    neptune
}

var directionToGo = CompassPoin.east
directionToGo = .north

switch directionToGo{
case .north:
    print("Hay que ir al norte")
case .east:
    print("Hay que ir al este")
case .west:
    print("Hay que ir al oeste")
case .south:
    print("Hay que ir al sur")
}

let somePlanet = Planet.mars

switch somePlanet{
case .earth:
    print("La tierra es segura")
default:
    print("No es seguro ir a este planeta")
}

enum Beverage : CaseIterable{
    case coffee, tea, juice, redbull
}

let numberOfCases = Beverage.allCases.count

for beverage in Beverage.allCases{
    print(beverage)
}

enum Barcode{
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var prudctBarcode = Barcode.upc(8, 85909, 51226, 3)
prudctBarcode = .qrCode("ASDFASDF")

switch prudctBarcode {
case let .upc(numberSystem, manuFactory, producto, check):
    print("UPC: \(numberSystem), \(manuFactory), \(producto), \(check)")
case let .qrCode(productCode):
    print("QR: \(productCode)")
}

//se asocie a un valor row value
enum ASCIIControlcharcter : Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let earthOrder = Planet.earth.rawValue

let possiblePlanet = Planet(rawValue: 5)

let planetPosition = 3
if let anyPlanet = Planet(rawValue: planetPosition){
    switch anyPlanet{
    case .earth:
        print("La tierra es segura")
    default:
        print("No es seguro ir a este planeta")
    }
} else {
    print("El planeta indicado no exite... ")
}

