import UIKit

struct Person{
    private var id : Int
    
    init(id: Int) {
        self.id = id
    }
    
    func Identity(){
        print("user id is \(id)")
    }
}
let result = Person(id: 84)
print(result.Identity())
 
