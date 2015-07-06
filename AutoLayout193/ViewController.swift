//
//  ViewController.swift
//  AutoLayout193
//
//  Created by qingjiezhao on 7/6/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    var loggedInUser : User? { didSet { updateUI() } }
    var secure : Bool = false { didSet { updateUI() } }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password:" : "Password:"
     
        
    }

    @IBAction func loginTapped(sender: AnyObject) {
        loggedInUser = User.login(loginField.text ?? "", password: passwordField.text ?? "")!
        passwordField.resignFirstResponder()
    }
    
    @IBAction func toggleSecurity() {
        println("security")
        secure = !secure
    }
    

    

    
}



