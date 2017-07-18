//
//  HomeTableViewController.swift
//  RegistrationForm_swift
//
//  Created by Kellton Tech on 16/04/1939 Saka.
//  Copyright © 1939 Saka Kelltontech. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController,UITextFieldDelegate {
    var Details = ["FirstName", "LastName", "Gender", "DOB", "Age", "Password"
                   , "Email ID", "Address", "Mobile No."]
    var userDetails:NSMutableArray = NSMutableArray()


    


    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        
        if let userDetails:NSDictionary = defaults.object(forKey: "userDetails") as? NSDictionary
        {
            if let userName =  userDetails.object(forKey: "name") as? String {
             
                self.userDetails.add(userName)
            }
            if  let lastName = userDetails.object(forKey: "lname") as? String {
                
                self.userDetails.add(lastName)
            }
            
            
            if let gender =  userDetails.object(forKey: "gender") as? String {
                self.userDetails.add(gender)
            }
            if let dob = userDetails.object(forKey: "dob") as? String {
                self.userDetails.add(dob)
            }
            if let age = userDetails.object(forKey: "age") as? String {
                self.userDetails.add(age)
            }
            if let password  = userDetails.object(forKey: "password") as? String {
                
                self.userDetails.add(password)
            }
            if let email = userDetails.object(forKey: "email") as? String {
                self.userDetails.add(email)
            }
            if let address = userDetails.object(forKey: "address") as? String {

                self.userDetails.add(address)
            }
            if let mobile = userDetails.object(forKey: "mobile") as? String {
                self.userDetails.add(mobile)
            }
        }
        
        // to get data from the dictionary
        
        
       
        
        
        
        
        
        
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
        return userDetails.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell

        cell.formLabel.text! = self.Details[indexPath.row]
        cell.formText.text! = "\(self.userDetails[indexPath.row] as! String)"
        
        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
