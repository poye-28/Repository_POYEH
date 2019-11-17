//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


/* 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
    ● Please create enum named ​Gasoline​ to model gasoline.
    ● Every kind of gasoline has its price. Please create a method named ​getPricein Gasoline enum that will return different price depending on differentgasoline.
    ● Please establish ​raw values​ for ​Gasoline​. The data type of raw value shouldbe String. For example, ​Gasoline.oil92.rawValue​ should be “92”.
 
 
*/

enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPriceInGasoline() -> String{
        switch self {
        case .oil92:
            return "oil92: $23/L"
        case .oil95:
            return "oil95: $50/L"
        case .oil98:
            return "oil98: $60/L"
        case .diesel:
            return "diesel: $66/L"
        }
     }
}

Gasoline.oil95.getPriceInGasoline()
Gasoline(rawValue: "92")

/*
    ● Please explain what is enum ​associate value​ and how it works
 
      使用enum來宣告擁的變數的同時，還可以為這些變數添加更多的數值。
*/






/* 2. Optional is a very special data type in Swift. Take ​​var​ a: ​Int​? = ​10​​​ for example, the value of ​a​ will be ​nil​ or ​Int​. You should learn how to deal with optional data type.

    ●   People would like to have pets, but not everyone could have one. Declare a class ​Pet​ with ​name​ property and a class ​People​ with ​pet​ property which will store a Pet instance or nil​. Please try to figure out what data type is suitable for these properties in Pet and People.
 
*/

class Pet{
    let name: String?
    
    init(name: String?){
        self.name = name
    }
}


class People{
    let pet: Pet
    
    init(pet: Pet){
        self.pet = pet
    }
    
}

//    ●   Please create People instance and use ​if let​ to unwrap the ​pet property.

let kittyCat = Pet(name: "Kitty")
let me = People(pet: kittyCat)




if let cat = kittyCat.name {
    print("cat is \(cat)")
} else{
    print("No cat name")
}

// ●   Please create a People instance and use ​guard let​ to unwrap the ​pet property.

let dog = Pet(name: nil)
let bill = People(pet: dog)

func getPetName(petName: String? ){
    
    guard let petName = petName else {
        print("No pet name!")
        return
    }
    print("My pet is \(petName)")
    
}
getPetName(petName: dog.name)
getPetName(petName: kittyCat.name)




