//
//  ViewController.swift
//  iOS_Seminar_Assignment_Two
//
//  Created by Yoonsun Hwang on 2020/04/20.
//  Copyright © 2020 Yoonsun Hwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func goSignup(_ sender: UIButton) {
        let goSignupView =
            self.storyboard?.instantiateViewController(withIdentifier: "signInViewController") as! SignInViewController
        
        self.navigationController?.pushViewController(goSignupView, animated: true)
    }
    
}

