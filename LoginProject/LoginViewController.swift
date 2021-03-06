//
//  LoginViewController.swift
//  LoginProject
//
//  Created by Krzysztof Kula on 11/06/15.
//  Copyright (c) 2015 Krzysztof Kula. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSegue" {
            var createAccountVC = segue.destinationViewController as! CreateAccountViewController
            createAccountVC.delegate = self;
        }
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        
        let userNameSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(kUserName) as! String
        let passwordSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(kPassword) as! String
        println(userNameSavedFromNSUserDefaults)
        println(passwordSavedFromNSUserDefaults)
        
        if usernameTextField.text == userNameSavedFromNSUserDefaults &&
            passwordTextField.text == passwordSavedFromNSUserDefaults {
                self.performSegueWithIdentifier("loginToMainSegue", sender: self)
        }else{
            usernameTextField.text = ""
            passwordTextField.text = ""
        }
        
        
    }
    @IBAction func createAccountButttonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
    }

    //CreateAccountViewControllerDelegate
    func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
    }
}
