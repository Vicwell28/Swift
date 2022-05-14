import UIKit

struct TimeTable{
    let multiplier : Int
    
    subscript(index : Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimeTable(multiplier: 3)
print("6 X 3 = \(threeTimesTable[6])")

for idx in 0...10{
    print("\(idx) x 3 = \(threeTimesTable[idx])")
}


enum Planet : Int {
    case mercury = 1, venus, earth, mars, jupier, saturn, uranus, neptune
    
    static subscript(n : Int) -> Planet{
        return Planet(rawValue: n)!
    }
}
