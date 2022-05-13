import UIKit

let names = ["Miguel", "Marin", "Pedro", "Mariano", "Victor Miguel"]

func backward(_ s1 : String, _ s2 : String) -> Bool{
    return s1 > s2
}


backward("Victor", "Miguel")

var ordenados = names.sorted(by: backward)

/*
 { (params) -> return type in
    code
 }
 */

var ordenadoClosure = names.sorted { (s1 : String, s2 : String) -> Bool in
    return s1 > s2
}
	
func someFunctionThatTakesAClouser(clousre : () -> Void){
    //Aqui a;adimos el cuerpo de la funcion
}

someFunctionThatTakesAClouser(clousre: {
    
})

someFunctionThatTakesAClouser {
    
}

var otherOrdre = names.sorted {$0 > $1}

let digitalNames = [
    1 : "Uno", 2 : "Dos", 3 : "Tres", 4 : "Cuatro", 5 : "Cinco", 6 : "Seis", 7 : "Siete", 8 : "Ocho", 9 : "Nueve"
]

let numbers = [10, 30, 50, 80]

digitalNames[10/10]!

/*let numberString = numbers.map { (numbrs) -> String in
    var numbrs = numbrs
    var output = ""
    repeat{
        output = digitalNames[numbrs/10]! + output
        numbrs/= 10
    } while numbrs > 0
    return output
}*/

func makeIncrement(forincrement amount : Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrement(forincrement: 10)
incrementByTen()
incrementByTen()






