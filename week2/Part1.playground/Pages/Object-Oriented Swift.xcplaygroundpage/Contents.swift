//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//  1. Declare a class ​Animal​ with property ​gender​ and method ​eat()​. The data type of        gender should be enum Gender as below and when you call eat() method, it will         print I eat everything!

class Animal{
    
    let gender: Gender
    
    init(gender: Gender){
        self.gender = gender
    }
    
    enum Gender {
        case male
        case female
        case undefined
    }
    
    func eat(){
        print("I eat everything!")
    }
    
}

//let cat = Animal.Gender.female
//cat.eat                           -> Value of type 'Animal.Gender' has no member 'eat'

//let cat : Animal
//cat.eat()                         -> Constant 'cat' used before being initialized

let dog = Animal(gender: .male)
dog.eat()






//  2. Declare three classes: ​Elephant​, T​iger​, H​orse​ that inheriting from Animal and       override the eat method to print what they usually eat.

class Elephant: Animal {
    
    override init(gender: Gender){
        super.init(gender: gender)
    }
    
    override func eat() {
        print("Plant!")
    }
}

class Tiger: Animal {
    
    override func eat() {
        print("Meat!")
    }
}

class Horse: Animal {
    
    override func eat() {
        print("Grass!")
    }
}


let elephant = Elephant(gender: .male)
elephant.eat()

let tiger = Tiger(gender: .female)
tiger.eat()

let horse = Horse(gender: .female)
horse.eat()






//  3. Declare a class ​Zoo​ with a property ​weeklyHot​ which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Be ​noticed that ​tiger​, ​elephant​, ​horse​ are    instances of class Tiger, Elephant and Horse.

class Zoo{
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: tiger)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse



/*  4. What’s the difference between ​Struct​ and ​Class​ ?

      1 Struct裡Swift會自動生成初始值，而Class必須透過init來定義初始值。
      2 Structe的instance 是value type ，而Class 的則是reference type。
        Struct創建的instance 再指派給其它變數時，這些instance是獨立存在的（所擁有的properti
        可以設定成不一樣的值），而 class 的instance指派給其他它變數時，這些instance 是參考同一
        個instance（更改任一property都會改變其它相關聯的數值）
*/

/*  5. What’s the difference between ​instance method​ and ​type method​ ?
 
      Instance method 必須使用struct/class建立一個相關的Instance，才能使用建立在struct/class裡的method。
        Instance method 可以使用在同一個struct/class裡的properties和其它method。
 
 
 
*/



/*  6. What does ​Initilizer​ do in class and struct ?

       class/struct 裡的 properties 需要有一個初始值才能使用。
       Struct會自動被指派一個和Property名稱相同的初始值，而class則必須由
       自己透過關鍵詞init的method來創建初始值。

*/

/*  7. What does ​self​ mean in an instance method and a type method ?
 
       當參數名和和屬性的名稱相同時，可以利用self來區分這兩者。
 
*/

/*  8. What’s the difference between ​reference type​ and ​value type​ ?

      sturct 是 value type，而 class 是 reference type。
 
 
 
*/




