//
//  RegistrationViewController.swift
//  RegistrationForm_swift
//
//  Created by Kellton Tech on 16/04/1939 Saka.
//  Copyright © 1939 Saka Kelltontech. All rights reserved.
//

import UIKit


class RegistrationViewController: UITableViewController,UITextFieldDelegate {

    var Details = ["FirstName", "LastName", "Gender", "DOB", "Age", "Password",
                   "Confirm Password", "Email ID", "Address", "Mobile No."]
    var personalsDetailsdict :NSMutableDictionary = NSMutableDictionary()
    var createPassword:String?
    
    @IBAction func submit(_ sender: Any) {
        // to save smaller credentails using userdefault
        let defaults = UserDefaults.standard
        defaults.set(personalsDetailsdict, forKey: "userDetails")
        print(defaults.object(forKey: "userDetails")!)
        // to get data from the user Defaults.

        // to get data from the array
        /*  let user = Details[0] */
        
        self.performSegue(withIdentifier: "GotoVC", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
            return Details.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegTableViewCell", for: indexPath) as! RegTableViewCell

        cell.Form.tag = 100+indexPath.row
        
        let FormDetails = Details[indexPath.row]
        cell.FormDetails?.text=FormDetails
        cell.Form?.delegate = self
       // personalsDetailsdict=cell.Form?.text
        return cell
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        print(textField.text!)
        if textField.tag == 100 {
            if textField.text != nil && textField.text != ""{
              self.personalsDetailsdict.setObject(textField.text!, forKey: "name" as NSCopying)
            }
            else{
                showAlertToUser(message: "Please fill the details")
            }
        }
        
        else if textField.tag == 101{
         
            if textField.text != nil && textField.text != ""{
     
                self.personalsDetailsdict.setObject(textField.text!, forKey: "lname" as NSCopying)
    
            }else{
    
                showAlertToUser(message: "Please fill the details")
    
            }
    
        }else if textField.tag == 102{
            if textField.text != nil && textField.text != ""{
            self.personalsDetailsdict.setObject(textField.text!, forKey: "gender" as NSCopying)
                }
            else{
                showAlertToUser(message: "Please fill the details")
            }
        }
        else if textField.tag == 103{
            if textField.text != nil && textField.text != ""{
            self.personalsDetailsdict.setObject(textField.text!, forKey: "dob" as NSCopying)
            }else{
                showAlertToUser(message: "Please fill the details")
            }
        }
        else if textField.tag == 104{
            
            self.personalsDetailsdict.setObject(textField.text!, forKey: "age" as NSCopying)
        }
        else if textField.tag == 105{
            if textField.text != nil && textField.text != ""{
            createPassword = textField.text!
            self.personalsDetailsdict.setObject(textField.text!, forKey: "password" as NSCopying)
            }else{
                
                showAlertToUser(message: "Please fill the details")
                
            }
        }
        else if textField.tag == 106{
            if textField.text != nil && textField.text != ""{
        
                if createPassword == textField.text! {
                   self.personalsDetailsdict.setObject(textField.text!, forKey: "cpassword" as NSCopying)
                }else{
                   self.showAlertToUser(message:"Password not matched")
                
                }
                
            }
            else{
                self.showAlertToUser(message:"Please fill the details")
            }
        }
        else if textField.tag == 107{
            if textField.text != nil && textField.text != ""{
            self.personalsDetailsdict.setObject(textField.text!, forKey: "email" as NSCopying)
            }else{
                showAlertToUser(message: "Please fill the details")
            }
        }
        else if textField.tag == 108{
            if textField.text != nil && textField.text != ""{

            self.personalsDetailsdict.setObject(textField.text!, forKey: "address" as NSCopying)
        }
            else{
                
                showAlertToUser(message: "Please fill the details")
                
            }
        }
        else if textField.tag == 109{
            if textField.text != nil && textField.text != ""{

        self.personalsDetailsdict.setObject(textField.text!, forKey: "mobile" as NSCopying)
                
            }
            else{
                
                showAlertToUser(message: "Please fill the details")
                
            }
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField){
    }

       func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if textField.tag == 100{
            
            textField.keyboardType = .default
        }
        else if textField.tag == 101{
            textField.keyboardType = .default
        }
        else if textField.tag == 102{
            textField.keyboardType = .default
        }
        else if textField.tag == 103{
            textField.keyboardType = UIKeyboardType.numberPad
        }
        else if textField.tag == 104{
            textField.keyboardType = .numberPad
        }
        else if textField.tag == 105{
            textField.keyboardType = .default
            textField.isSecureTextEntry = true
        }
        else if textField.tag == 106{
            textField.keyboardType = .default
            textField.isSecureTextEntry = true
        }
        else if textField.tag == 107{
            textField.keyboardType = .emailAddress
        }
        else if textField.tag == 108{
            textField.keyboardType = .default
        }
        else if textField.tag == 109{
            textField.keyboardType = .numberPad
        }
        return true
    }
    
    func showAlertToUser(message:String){
        
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: { (alerthand) in
            print("Ok Button Tapped")
        })
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        if textField.tag == 109{
        let maxLength = 4
        let currentString: NSString = textField.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
       }
        return true
    }
}
