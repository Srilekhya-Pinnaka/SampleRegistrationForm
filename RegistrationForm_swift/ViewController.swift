//
//  ViewController.swift
//  RegistrationForm_swift
//
//  Created by Kellton Tech on 16/04/1939 Saka.
//  Copyright © 1939 Saka Kelltontech. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var Username: UILabel!
    @IBOutlet var Password: UILabel!
    @IBOutlet var password_text: UITextField!
    @IBOutlet var username_text: UITextField!
    @IBOutlet var loginbutton: UIButton!
    @IBOutlet var regButton: UIButton!
    
    // MARK:- @IBAction
    @IBAction func Login_btn(_ sender: Any) {
        
        

        
        
        let defaults = UserDefaults.standard

        let userDetails = defaults.object(forKey: "userDetails") as! NSDictionary
        // to get data from the dictionary
        let userName =  userDetails.object(forKey: "name") as? String
        let password  = userDetails.object(forKey: "password") as? String
//        let lastName = userDetails.object(forKey: "lname")
//        let gender =  userDetails.object(forKey: "gender")
//        let dob = userDetails.object(forKey: "dob")
//        let age = userDetails.object(forKey: "age")
//        let email = userDetails.object(forKey: "email")
//        let address = userDetails.object(forKey: "address")
//        let mobile = userDetails.object(forKey: "mobile")
        
        if userName == self.username_text.text! && password == self.password_text.text!{
            
            self.performSegue(withIdentifier: "HomeVCSegue", sender:self)
            
        }else{
            // show alert to user
            let alert = UIAlertController(title: "Error", message: "Invalid Credentials", preferredStyle: UIAlertControllerStyle.alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: { (alerthand) in
                print("Ok Button Tapped")
            })
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func Reg_btn(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

