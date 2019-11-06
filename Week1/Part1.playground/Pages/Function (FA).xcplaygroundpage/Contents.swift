//: [Previous](@previous)

/*    Function    */

//  1.Please declare a function named ​greet​ with ​person​ as argument label and ​name​ as       parameter name. This ​greet​ function will return a String. For example, if you call    the function greet like this:

func greet(person:String) -> String {
    
    return "Hello, \(person)"
}

greet(person: "Bill")






//  2.Please declare a function named ​multiply​ with two argument ​a​ , ​b​ , and with no        return value that when you call this function, compiler will print out the result     of ​a * b​. Be noticed that we want to give argument ​b​ with a ​default value​ 10.

func multiply(a:Int, b:Int = 10) -> Void {
    print(a * b)
}

multiply(a: 20)






/*  3.What’s the difference between argument label and pararmeter label in function ?
 
    在編寫function時，給變數的名稱稱作 parameter label。而使用function時，則稱作 argument label。
    Swift 的預設parameter label 和 argument label 相同。如果想要設定自己的argument
    label，在編寫function時，在 變數前加上名稱並空一格。為自己的function加入argument
    label 可以增加程式的可讀性。
 
*/






//  4.What are the return type in the following statements?   String 和 Double

func birthday() -> String {
    return "Hello world"
}

func payment() -> Double {
    return 4000.0
}

let returnType1 = birthday()
let returnType2 = payment()

print(returnType1)
print(returnType2)

