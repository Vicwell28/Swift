import UIKit

class Vehicle {
    final var propiedadQueNoSePuedeSobreecribir : Bool = false
    var currentSpeed = 0.0
    var description : String {
        return "Viajando a \(self.currentSpeed) km/h"
    }
    
    func makeNoise() -> String{
        //no hacer nada, porque cada vehiculo tiene su propia forma de hacer ruido
        return "Cada vehiculo hace ruidos diferentes"
    }
}

let someVehicle = Vehicle()
print(someVehicle.currentSpeed)


class Bicycle : Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print(bicycle.description)

class Train : Vehicle {
    var numberOfWagons = 0
    
    //Sobreescribir
    override func makeNoise() -> String {
        return "Choo chooo"
    }
}

let train = Train()
train.makeNoise()

class Car : Vehicle{
    var gear = 1
    
    override var description : String {
        return super.description + " en marcha \(gear)"
    }
}

let car = Car()
car.currentSpeed = 55
car.gear = 3
print(car.description)
