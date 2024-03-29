//
//  ViewController.swift
//  Simple log-in & sign-up page
//
//  Created by Po yeh Fu on 22/11/19.
//  Copyright © 2019 Po yeh Fu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        checkTextField.isEnabled = false
        checkTextField.backgroundColor = .gray

    }

    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var accountTextField: UITextField!
    
    @IBOutlet weak var loginSignupSementedControl: UISegmentedControl!
    @IBOutlet weak var loginSignupButton: UIButton!

    
    
//通過segment的index數字來判別是要登入還是註冊（登入的部分要更改Check欄位的狀態
    @IBAction func segmentChanged(_ sender: Any) {
        switch loginSignupSementedControl.selectedSegmentIndex {
            case 0:
                checkTextField.backgroundColor = .gray
                checkTextField.isEnabled = false
            case 1:
                checkTextField.backgroundColor = .white
                checkTextField.isEnabled = true
            default:
                return
        }
    }
    
    
    
//    @IBAction func loginOrSignup(_ sender: Any) {
//        var message = ""
//        let loginStatus = 0
//        let signupStatus = 1
//        var title = "Error"
//        switch loginSignupSementedControl.selectedSegmentIndex {
//            case loginStatus:
//                if accountTextField.text == "" {
//                    message = "Account should not be empty."
//                } else if passwordTextField.text == "" {
//                    message = "Password should not be empty."
//                } else if accountTextField.text == "appworks_school@gmail.com" {
//                    if passwordTextField.text == "1234" {
//                        title = "Login sucessful"
//                        message = "Welcome!"
//                    } else {
//                        message = "Login fail"
//                    }
//                } else {
//                        message = "Your account is wrong!"
//                }
//            case signupStatus:
//                if accountTextField.text == "" {
//                    message = "Account should not be empty."
//                } else if passwordTextField.text == "" {
//                    message = "Password should not be empty."
//                } else {
//                    if passwordTextField.text == checkTextField.text {
//                        title = "Signup successful"
//                        if let account = accountTextField.text,
//                            let password = passwordTextField.text{
//                           message = "Your Account is \(account)." + "\nYour Password is \(password)."
//                        }
//
//
//                    } else {
//                        message = "Signup fail"
//                        clearPassowordAndCheck()
//                    }
//                }
//            default:
//                    return
//        }
//
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default, handler: {
//            action in
//            self.clearAllText()
//        })
//        alert.addAction(action)
//        present(alert, animated: true)
//
//
//    }
    
    
    @IBAction func loginOrSignup(_ sender: Any) {
        var message = ""
        let loginStatus = 0
        let signupStatus = 1
//        var title = "Error"
        switch loginSignupSementedControl.selectedSegmentIndex {
        case loginStatus:
            if accountTextField.text == "" {
                callAlert(message: "Account should not be empty.")
            } else if passwordTextField.text == "" {
                callAlert(message: "Password should not be empty.")
            } else if accountTextField.text == "appworks_school@gmail.com" {
                
                if passwordTextField.text == "1234" {
                    callAlert(title: "Login sucessful", message: "Welcome!")
                } else {
                    callAlert(message: "Login fail")
                }
            } else {
                callAlert(message: "Your account is wrong!")
            }
            
        case signupStatus:
            if accountTextField.text == "" {
                message = "Account should not be empty."
            } else if passwordTextField.text == "" {
                message = "Password should not be empty."
            } else {
                if passwordTextField.text == checkTextField.text {
                    title = "Signup successful"
                    if let account = accountTextField.text,
                        let password = passwordTextField.text{
                        message = "Your Account is \(account)." + "\nYour Password is \(password)."
                    }
                    
                    
                } else {
                    message = "Signup fail"
                    clearPassowordAndCheck()
                }
            }
        default:
            return
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.clearAllText()
        })
        alert.addAction(action)
        present(alert, animated: true)
        
        
    }

    //以下為function
    
    func callAlert(title: String = "Error", message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.clearAllText()
        })
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    
    func clearAllText(){
        accountTextField.text = ""
        passwordTextField.text = ""
        checkTextField.text = ""
    }
    
    func clearPassowordAndCheck() {
        passwordTextField.text = ""
        checkTextField.text = ""
    }
    
    
    
    
}

