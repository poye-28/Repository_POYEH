//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

enum GuessNumberGameError: Error{
    case wrongNumber
}


class GuessNumberGame{
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else{
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right: \(targetNumber)")
    }
    
}


var gameOne = GuessNumberGame()


for _ in 1...20 {
let randomNumber = Int.random(in: 8...11)
    do{
        try gameOne.guess(number: randomNumber)
    }catch GuessNumberGameError.wrongNumber{
        print("Wrong number!")
    }
}


