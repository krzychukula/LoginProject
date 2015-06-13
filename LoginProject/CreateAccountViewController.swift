//
//  CreateAccountViewController.swift
//  LoginProject
//
//  Created by Krzysztof Kula on 11/06/15.
//  Copyright (c) 2015 Krzysztof Kula. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var chooseUsernameTextField: UITextField!
    
    @IBOutlet weak var choosePasswordTextField: UITextField!

    @IBOutlet weak var confirmPasswrodTextField: UITextField!
    
    let kUserName = "userNameKey"
    let kPassword = "passwordKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func createAccountButtonPressed(sender: UIButton) {
        if choosePasswordTextField.text == confirmPasswrodTextField.text &&
            choosePasswordTextField.text != nil {
                
                NSUserDefaults.standardUserDefaults().setObject(chooseUsernameTextField.text, forKey: kUserName)
                NSUserDefaults.standardUserDefaults().setObject(choosePasswordTextField.text, forKey: kPassword)
                
                NSUserDefaults.standardUserDefaults().synchronize()
                
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func cancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
