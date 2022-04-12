//
//  ViewController.swift
//  Login & SignUp
//
//  Created by Ahmed Taha on 10/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func signUpBtn(_ sender: Any) {
        
        let userName = userNameTextField.text!
        let password = passwordTextField.text!
        let userDefault = UserDefaults.standard
        
        userDefault.set(userName, forKey: "UserName")
        userDefault.set(password, forKey: "Password")
        
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        
        let userDefault = UserDefaults.standard
        
        let userName = userDefault.string(forKey: "UserName")
        let password = userDefault.string(forKey: "Password")
        
        let name = userNameTextField.text!
        let pass = passwordTextField.text!
        
        if (userName == name) && (password == pass) {
            
            let alertController = UIAlertController(title: "Alert", message: "Success", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            
            let alertController = UIAlertController(title: "Alert", message: "Your user name or password is correct!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
            
        }
        
    }
    
}

