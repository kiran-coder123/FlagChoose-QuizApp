import UIKit

//struct sport{
//    var name: String
//}
//var tennis = sport(name: "tennis")
//print(tennis.name)
//tennis.name = "cricket"
//print(tennis.name)

//struct sport {
//    var name: String
//    var isOlympicSport : Bool
//
//    var olympicStatus : String{
//        if isOlympicSport{
//            return "\(name) is an olympic sport"
//        }else{
//            return "\(name) is not olympic sport"
//      }
//    }
//}
//let chessBoxing = sport(name: "chessBoxing", isOlympicSport: true)
//print(chessBoxing.olympicStatus)
//
//struct Progress{
//    var task: String
//    var amount: Int {
//        didSet{
//            print("\(task) is now \(amount)% complete")
//        }
//    }
//}
//var progress = Progress(task: "Loading data", amount: 10)
//progress.amount = 30
//progress.amount = 80
//progress.amount = 100
//
//struct City{
//    var population: Int
//
//    func collectTaxes() -> Int{
//        return population * 1000
//    }
//}
//var london = City(population: 123456789)
//london.collectTaxes()

//struct person{
//    var name: String
//
//    mutating func makeAnynomous(){
//        name = "kiran"
//    }
//
//}
//var p = person(name: "satyawan")
//p.makeAnynomous()

// Initializers

struct User{
    var name: String
    
    init(){
        name = "ios developer"
        print("i am an ios developer")
    }
}

var user = User()
user.name = "kiran"
print(user)

// Referring to the Current Instance

struct Person{
    var name: String
    
    init(name:String){
        print("\(name) was born")
        self.name = name
        
    }
}
var result = Person(name: "kiran")
