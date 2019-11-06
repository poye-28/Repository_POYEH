//: [Previous](@previous)

import Foundation

/* Control Flow */

/*  1.Here is an array:
        let​ lottoNumbers = [1​0,​ 9​​, 8​,​ ​7,​ 6​​, 5​]
        Please use For-Loop and Range to print the last three members in the ​lottoNumbers
        array.
*/

let lottoNumbers = [10, 9, 8, 7, 6, 5]

for i in 3...5 {
    print(lottoNumbers[i])
}






//  2.When use for-in loop, we make the computer do the same thing multiple times. The      index is increasing by 1. What if we want to decreasing by -1 ? What if we want to    increasing by 2 ? Please use swift syntax to get the result as images list below :

for i in 0...5 {
    print(5 + i)
}

for i in 0...2 {
    print(10 - 2*i)
}






//  3.Please use while loop to solve above question.

var i = 3
while i < 6 {
    print(lottoNumbers[i])
    i += 1
}

i = 5
while i < 11 {
    print(i)
    i += 1
}


i = 0
while i < 3 {
    print(10 - 2*i)
    i += 1
}






//  4.Please use repeat-while loop to solve question 2.
i=5
repeat {
    print(i)
    i += 1
} while i < 11

i=0
repeat {
    print(10 - 2*i)
    i += 1
} while i < 3






/*  5.What are the differences between while and repeat-while?
 
    while 會先做判斷，如果結果為false則完全不會執行l；而 repeat-while 則先執行再做判斷，因此至少會執行一次程式碼。
*/






//  6.Here is variable ​isRaining​ to record the weather. Please write a statement that if    the weather is raining, print ​“It’s raining, I don’t want to work today.”​,            otherwise print “Although it’s sunny, I still don’t want to work today.”

for _ in 1...5 {

    let isRaining = Int.random(in: 0...1)

    if isRaining == 1 {
        print("It’s raining, I don’t want to work today.")
    } else {
        print("Although it’s sunny, I still don’t want to work today.")
    }

}






//  7.In a company, we usually use numbers to represent job levels. Let’s make a example. We have four job levels : Member, Team Leader, Manager, Director. We use 1 to present Member, 2 to Team Leader, 3 to Manager, 4 to Director. Now, create a variable name ​jobLevel​ and assign a number to it. If jobLevel number is in our list, print the relative job title name; if not, just print ​“We don't have this job”​. Please use switch statement to complete this requirement.


for _ in 1...5{
    
let jobLevel = Int.random(in: 1...7)
    
    if jobLevel == 1 {
        print("Member")
    } else if jobLevel == 2 {
        print("Team Leader")
    } else if jobLevel == 3 {
        print("Manager")
    } else if jobLevel == 4 {
        print("Director")
    } else {
        print("We don't have this job")
    }

}
