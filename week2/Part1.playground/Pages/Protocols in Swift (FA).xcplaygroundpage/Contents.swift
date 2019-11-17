//: [Previous](@previous)
//: [Next](@next)

/* 1. Declare a struct ​Person​ with a ​name​ property type String and a protocol name      PoliceMan​. There is only one method ​arrestCriminals​ with no argument and return   void in the protocol.
 
   2. Make struct ​Person​ conformto ​PoliceMan​ protocol.
 
*/


protocol PoliceMan{
    func arrestCriminals() -> Void
}

struct Person: PoliceMan, ToolMan{
    let name: String
    
    func arrestCriminals() -> Void {
        print("Arresting criminals is my job.")
    }
    
    func fixComputer() -> Void{
        print("I can help you to fix computers.")
    }
    
}


/*
   3. Declare a protocol ​ToolMan​ with a method ​fixComputer​ that no argument and         return void.
   4. Add a property ​toolMan​ to the struct Person with data type ​ToolMan​.

*/

protocol ToolMan{
    func fixComputer() -> Void
}

// 5. Declare a struct named ​Engineer​ that conforming to the T​oolMan​ protocol.

struct Engineer: ToolMan{
    func fixComputer() -> Void{}
}

// 6.Create a Person instance with the name Steven and also create the relative data you need to declare this instance.

let me = Person(name: "Steven")

me.arrestCriminals()
me.fixComputer()
me.name

