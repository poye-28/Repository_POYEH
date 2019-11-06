//: [Previous](@previous)

import Foundation

/* Collection */

//  1.Please create an empty array with String data type and save it in a variable namedmyFriends

var namedmyFriends: [String] = []






//  2.According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help meto add        their name in to ​myFriends​ array.

namedmyFriends += ["Ian","Bomi","Kevin"]






//  3.Oops,I forget to add ‘Michael’ who is one of my best friend, please help me to addMichael to the   end of ​myFriends​ array

namedmyFriends.append("Michael")






//  4.Because I usually hang out with Kevin, please move Kevin to the beginning of themyFriends​ array.

namedmyFriends.swapAt(0, 2)






//  5.Use for...each to print all the friend in ​myFriends​​array.

for name in namedmyFriends{
    print(name)
}






/*  6.Now I want to know who is at index 5 in the ​myFriends​ array, try to      find the answer for me. Please explain how did you get the answer and    why the answer is it.
 
    a) 首先確認陣列的index 5有數值，而swift的陣列是從0開始的，要確保陣列中至少有6項
    b) 使用namedmyFriends.count得出總共只有4項，所以得知index 5 是空的
    c) 如果項數超過6，直接輸入namedmyFriends[5]，就可以得到答案
 
 */

namedmyFriends.count






//  7.How to get the first element in an array?

let firstElement = namedmyFriends.first






//  8.How to get the last element in an array?

let lastElement = namedmyFriends.last






//  9. Please create an dictionary with keys of type String, value of type Int, and save it in a variable named ​myCountryNumber​.

var myCountryNumber:[String:Int] = [:]







//  10.Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.

myCountryNumber = [ "US":1 , "GB":44 , "JP":81 ]






//  11. Change the ‘GB’ value from 44 to 0.

myCountryNumber.updateValue(0, forKey: "GB")






//  12. How to declare a empty dictionary?

var emptyDict:[String:Int] = [:]






//  13. How to remove a key-value pair in a dictionary?

myCountryNumber["US"] = nil





