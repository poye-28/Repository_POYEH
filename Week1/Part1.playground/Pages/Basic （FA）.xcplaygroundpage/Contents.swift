import UIKit

/*Basic*/

//  1.When calculating circle’s area, we use the formula: ​ 2 * radius * Pi​ to get area. Now,please    define a variable ​ Pi ​ and assign a value to it. You can refer to the syntaxabove while do think about using var​ or ​let and which data type it should be.

let Pi: Double = 3.14






//  2.Create two constants x and y of type ​Int​ then assign any value to them. After that,please calculate the average of x and y and store the result in a constant named average.

let x: Int = 7
let y: Int = 3
let average: Int = (x + y)/2






/*
    3.Following with Q2, now we want to save the average in a record system, but thesystem doesn’t accept 65 but 65.0.
 
        ● Please solve this problem so that we can put the average in the recordsystem.
 
 */


let x1: Double = 4
let y1: Double = 5
let average1: Double = (x1 + y1)/2

print(average1)

/*        ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
 
        如果沒有主動宣告變數的性質（var或let)，變數會根據被指派的值來判定資料的性質（整數或浮點數）。
 */






//  4.Swift is a very powerful language that it can infer the data type for you (​ Typeinference ​)     while we still need to know the basics well. Please change the followingcodes into the one      with data type.

var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8






//  5.Compound assignment ​ operator is very useful when programming. Please create salary as 22000,   and use ​ unary plus operator ​ adding 28000 to salary, and it will be50000 after this process.


var salary = 22000

salary += 28000






/* 6.You should notice that ​ ‘=’ ​ has difference meaning in programming. In real world, ​ ‘=’means qual while In programming, ​ ‘=’ ​ means ​assign​. You simply put the right handside data into left hand side variable or constant

 Now please write down the ​Equality​ operator in swift  A: ==
 
*/

let studentGrade: Int = 100
let comment: String = studentGrade == 100 ? "Good job!" : "Keep up the good work!"






//  7.Declare two constants that values are 10 and 3 each, then please calculate there mainder and     save the result in a constant named ​remain​.

let a = 10
let b = 3
let remain = a % b






/*  8.Please explain the difference between​​ let​ and​​ var​.
 
    如果程式當中要宣告一個常數（像是π）使用let，而如果要宣告的數值會變動（像是第八題的薪水）則用var。
 
*/






/* 9.Please write down naming conventions and rules you learned in this session.

 ● 變數不要含有空格   let cat name:string = "Kitty" (x)
 ● 英文命名含有多個詞語時，詞語第一個字大寫（除了第一個詞語）  let myCatName = "Kitty"
 ● 命名時不可以以數字開頭/ 不可以含有特殊字元 / 不可以使用數學符號
 
*/






/*  10.What is Type Inference in swift?
   即使你沒有宣告變數的型態，swift會根據你給的內容來判斷，變數應該是怎麼樣的型態（Int、double、string......）
 
*/






/*  11.What is the problem about this piece of code?
 
        var phoneNumber = 0987654321
        phoneNumber = "Hello world."
 
 
        不能將類型是String的數值給宣告類型為整數的變數，變數可以被改變，但類型必須一致
 
        *將電話號碼宣告為string
            var phoneNumber = "0987654321"
            phoneNumber = "Hello world."

*/

