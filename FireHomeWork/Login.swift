//
//  Login.swift
//  FireHomeWork
//
//  Created by studentNumber13 on 5/16/17.
//  Copyright © 2017 studentNumber13. All rights reserved.
//

import UIKit
import Firebase


class Login: UIViewController {
// MARK :- Instance Builder Portion
    
    @IBOutlet var emailOutlet: UITextField!
    @IBOutlet var passwordOutlate: UITextField!
   
    @IBAction func loginButtonPressed(_ sender: Any) {
    }
    @IBAction func forgotButtonPressed(_ sender: Any) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
