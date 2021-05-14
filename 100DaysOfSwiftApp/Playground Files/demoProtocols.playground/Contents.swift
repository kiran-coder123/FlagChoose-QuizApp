import UIKit

protocol Identifiable{
    var id: String {get set}
}

struct User: Identifiable{
    var id: String
    
    func displayID(thing: Identifiable){
        print("my ID is \(thing.id)")
    }
}
var user = User(id: "956481")
print(user.id)



// calculated square of numbers
extension Int{
    func square() -> Int{
        return self * self
    }
}
let number = 20
number.square()

// check even numbers
extension Int{
    var isEven: Bool{
        return self % 2 == 0
    }
}
let num1 = 11
num1.isEven

// Array and Set
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo","Ringo"])

extension Collection{
    func sumarize(){
        print("there are \(count) of us")
        
        for name in self{
            print(name)
        }
        
    }
    
}
pythons.sumarize()
beatles.sumarize()


// type casting
class Animal {}
class Fish: Animal{}
class Dog: Animal{
    func makeNoise(){
        print("woof!!")
    }
}
let pets = [Fish(),Dog(),Fish(),Dog()]
for pet in pets{
    if let dog = pet as? Dog{
        dog.makeNoise()
    }
}



// array
var songs = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both = songs + songs2
print(both)

//both += "Teri mitti"
var str = "Fakers gonna"

for _ in 1 ... 5 {
    str += " fake"
}

print(str)

// Inner Loop
var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ..< people.count {
    var str = "\(people[i]) gonna"

    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }

    print(str)
}
