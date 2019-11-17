//
//  ViewController.swift
//  Simple App
//
//  Created by Po yeh Fu on 17/11/19.
//  Copyright © 2019 Po yeh Fu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backGroundColor = BackgroundColors()
    let funFact = FunFact()
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var showButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        factLabel.text = funFact.funfacts[0]
    }
    
    
    @IBAction func showFact() {
        let randomColor = backGroundColor.randomColor()
        let randomFunFact = funFact.randomFunFact()
        view.backgroundColor = randomColor
        showButton.tintColor = randomColor
        factLabel.text = randomFunFact
        

    }
    
}

