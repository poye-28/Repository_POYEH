//
//  BackgroundColor.swift
//  Simple App
//
//  Created by Po yeh Fu on 17/11/19.
//  Copyright © 2019 Po yeh Fu. All rights reserved.
//

import UIKit

struct BackgroundColors {
    let colors = [
        UIColor(red: 90/255.0, green: 244/255.0, blue: 181/255.0, alpha: 1.0),
        UIColor(red: 70/255.0, green: 34/255.0, blue: 181/255.0, alpha: 1.0),
        UIColor(red: 90/255.0, green: 100/255.0, blue: 210/255.0, alpha: 1.0),
        UIColor(red: 200/255.0, green: 90/255.0, blue: 65/255.0, alpha: 1.0),
        UIColor(red: 170/255.0, green:56/255.0, blue: 81/255.0, alpha: 1.0),
        UIColor(red: 120/255.0, green: 34/255.0, blue: 200/255.0, alpha: 1.0),
        UIColor(red: 9/255.0, green: 24/255.0, blue: 210/255.0, alpha: 1.0),
    ]
    
    func randomColor() -> UIColor{
        let ramdomNumber = Int.random(in: 0...6)
        return colors[ramdomNumber]
    }
    
}
