 
import Foundation

// func square(number: Int...){
//    for num in number{
//        print("\(number) square is \(num*num)")
//    }
// }
//square(number: 1,2,3,4,5)

// enum PasswordError: Error {
//     case obvious
// }
//
// func checkPassword(_ password: String) throws -> Bool {
//     if password == "password" {
//         throw PasswordError.obvious
//     }
//
//     return true
// }
// try? checkPassword("password")

// let driving = {
//    print("I am driving in my car")
// }
//
// func travel(action: () -> Void){
//    print("I am getting ready to go ")
//    action()
//    print("I arrived")
// }
// travel(action: driving)

 
 
 // closure with multiple parameter
 
// let driving = {
//    print("I am driving in my car")
// }
//
// func travel(action: (String,Int) -> String) {
//    print("i am gettting ready to go")
//    let desc = action("singapur",600)
//    print(desc)
//    print("I arrived!!")
// }
// // called using trailling closure
// travel{
//    "i am going to \($0) at \($1) miles per hours"
// }
 
 
 // returning closure from functions
 func travel() -> (String) -> Void{
    return{
        print("i am going to \($0)")
    }
 }

 let result = travel()("nandra")
 //result("jalgaon")
 
