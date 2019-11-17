//
//  FunFact.swift
//  Simple App
//
//  Created by Po yeh Fu on 17/11/19.
//  Copyright © 2019 Po yeh Fu. All rights reserved.
//

struct FunFact {
    let funfacts = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cites of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of LoremIpsum, Lorem ipsum dolor sit amet.."
    ]
    
    func randomFunFact() -> String {
        let randomNumber = Int.random(in: 0...6)
        return funfacts[randomNumber]
    }
    
    
}
