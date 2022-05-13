import UIKit

class Counter {
    var count = 0
    
    func increment(){
        self.count += 1
    }
    
    func increment(by amount : Int){
        self.count += amount
    }
    
    func reset(){
        self.count = 0
    }
}

let counter = Counter()

counter.increment()
counter.increment(by: 8)
counter.reset()

struct Point{
    var x = 0.0, y = 0.0
    
    func isToTheFight(of x : Double) -> Bool{
        return self.x > x
    }
    
    mutating func moveBy (x deltaX : Double, y deltaY : Double){
        //self.x += deltaX
        //self.y += deltaY
        self = Point(x: self.x + deltaX, y: self.y + deltaY)
    }
}

var somePoint = Point(x: 4, y: 5)
somePoint.isToTheFight(of: 3)
somePoint.isToTheFight(of: 6)

somePoint.moveBy(x: 2, y: -3)

enum DifferentStateSwitch{
    case off, low, high
    
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var controllerStatus = DifferentStateSwitch.off
controllerStatus.next()
controllerStatus.next()
controllerStatus.next()

class someClase{
    class func someMethod(){
        print("Hola")
    }
}

struct LevelTracker {
    static var highesUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level : Int){
        if level > highesUnlockedLevel{
            highesUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level : Int) -> Bool{
        return level <= highesUnlockedLevel
    }
    
    mutating func advance(to level : Int) -> Bool{
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player{
    var tracker = LevelTracker()
    let playerName : String
    func complete(level : Int){
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    
    init(name : String){
        self.playerName = name
    }
}

var player = Player(name: "Victor Miguel")
player
player.complete(level: 1)
if player.tracker.advance(to: 7){
    print("Podemos avanzar hasta el nivel 7")
} else {
    print("El nivel 7 sigue bloqueado por ahora ")
}


