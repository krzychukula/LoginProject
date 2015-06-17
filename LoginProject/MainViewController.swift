//
//  MainViewController.swift
//  LoginProject
//
//  Created by Krzysztof Kula on 11/06/15.
//  Copyright (c) 2015 Krzysztof Kula. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        usernameLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kUserName) as? String
        passwordLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kPassword) as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
