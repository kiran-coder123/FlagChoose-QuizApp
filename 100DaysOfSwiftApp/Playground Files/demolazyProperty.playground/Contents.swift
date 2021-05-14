import UIKit

//struct FamilyTree{
//    init() {
//         print("creating family tree")
//    }
//}
//
//struct Person{
//
//    var name: String
//   lazy var familyTree = FamilyTree()
//    init(name:String) {
//        self.name = name
//    }
//
//}
//var ed = Person(name: "ed")
//print(ed.familyTree)


// static property and methods
struct Student{
    static var classSize = 0
    var name: String
    init(name:String) {
        self.name = name
        Student.classSize += 1
        
    }
}
let ed = Student(name: "kiran")
//let ganu = Student(name: "ganesh")

print(Student.classSize)

