//
//  SignUp.swift
//  
//
//  Created by studentNumber13 on 5/16/17.
//
//

import UIKit
import Firebase

class SignUp: UIViewController {
// MARK : - Instance Bulder Portion
    
    @IBOutlet var emailOutlet: UITextField!
    @IBOutlet var passwardOutlet: UITextField!
    
    @IBAction func signupButtonPressed(_ sender: Any) {
    
        guard let email = emailOutlet.text else{
            showAlart(message: "Please enter email", alartType: .Alart)
            return
        }
        guard let password = passwardOutlet.text else{
            showAlart(message: "Please enter password", alartType: .Alart)
            return
        }
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
            self.showAlart(message: "Your account was successfully created", alartType: .Success)
            //self.dismiss(animated: true, completion: nil)
        })
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    enum alartType {
        case Alart
        case Success
    }
    
    func showAlart(message:String, alartType:alartType){
        if alartType == .Alart{
            let alartController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let alartAction = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
            alartController.addAction(alartAction)
            alartController.present(alartController, animated: true, completion: nil)
        }
        else{
            let alartController = UIAlertController(title: "Great", message: message, preferredStyle: .alert)
            let alartAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alartController.addAction(alartAction)
            alartController.present(alartController, animated: true, completion: nil)
        }
        
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
