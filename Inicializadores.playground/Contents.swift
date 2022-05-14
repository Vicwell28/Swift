import UIKit

struct Fahrenheit {
    var temperature : Double
    
    init(){
        self.temperature = 32
    }
}


var f1 = Fahrenheit()


struct Celsius {
    var temprature : Double
    
    init(formFahrenheit fahrenheit : Double){
        self.temprature = (fahrenheit - 32 ) / 1.8
    }
    
    init(fromKelvin kelvin : Double){
        self.temprature = kelvin - 273.15
    }
    //etiqueta
    init(_ celsius : Double){
        self.temprature = celsius
    }
}

let boilingPointOfWather = Celsius(formFahrenheit: 212)
let freezingPointOfWather = Celsius(fromKelvin: 273.15)

struct Color{
    let red, green, blue : Double
    
    init(red : Double, green : Double, blue : Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white : Double){
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGray = Color(white: 0.5)

class Vehicle {
    var numberOfWeels = 0
    var description : String {
        return "\(self.numberOfWeels) ruedas"
    }
}

class Bicycle : Vehicle{
    override init(){
        super.init()
        numberOfWeels = 2
    }
}

let bicycle = Bicycle()
bicycle.description

class Hoverboard : Vehicle{
    var color : String
    
    init(color : String){
        self.color = color
        //aqui se llama implicitamente a super.init()
    }
    
    override var description: String{
        return "\(super.description) en el color \(self.color)"
    }
}


enum TemperatureUnit{
    case kelvin, celsius, fahrenheit
    
    init?(symbol : Character){
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default
            return nil
        }
    }
}
