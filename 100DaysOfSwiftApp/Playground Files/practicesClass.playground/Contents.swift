import UIKit

class Dog{
    var name: String
    var breed: String
    
    init(name:String, breed:String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise(){
        print("Woof!!")
    }
}
var dog = Dog(name: "bruno", breed: "american stepherd")
print(dog.breed)

class Poodel: Dog{
    init(name:String) {
        super.init(name: name, breed: "poogle")
    }
    override func makeNoise() {
        print("Yik!!")
    }
}
 var p = Poodel(name: "kiran")
p.makeNoise()


class Singer{
     var name = "kiran sonne"
}
var singer = Singer()
singer.name

var singer2 = singer
singer2.name = "ganesh patil"

struct SingerIndia{
    var name = "kiran"
}
var singerIndia = SingerIndia()
singerIndia.name
var singerindia2 = singerIndia
singerindia2.name = "ganesh"
print(singerindia2.name)



class Developer{
    var name = "kiran sonne"
    
    init(name:String){
        print("\(name) is alive ")
    }
    
    deinit {
        print("\(name) is no moew")
    }
    
    func designation(){
        print("most talented awards goes to \(name)")
        
      }
    }
for _ in 1...3 {
    var dev = Developer(name: "hhh")
    dev.designation()
}
class ThemePark {
    var entryPrice: Int
    var rides: [String]
    init(rides: [String]) {
        self.rides = rides
        self.entryPrice = rides.count * 2
    }
}
var themePark = ThemePark(rides: ["dsdsds","dss"])  
