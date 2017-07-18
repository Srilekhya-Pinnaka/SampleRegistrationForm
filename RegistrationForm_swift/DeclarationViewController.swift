//
//  DeclarationViewController.swift
//  RegistrationForm_swift
//
//  Created by Kellton Tech on 21/04/1939 Saka.
//  Copyright © 1939 Saka Kelltontech. All rights reserved.
//

import UIKit

class DeclarationViewController: UIViewController {

    var sampleSTR:String?
    var str1:String = String()
    var val:Int?
    var modLBJ = SampleModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        
        let userDetails:NSDictionary = (defaults.object(forKey: "userDetails") as? NSDictionary)!


        
           modLBJ = modLBJ.sampleMot(detailDict: userDetails) as! SampleModel
            
        
        
        print(modLBJ.modGender!)
        print(modLBJ.modID!)
        print(modLBJ.modLastName!)
        print(modLBJ.modName!)
       
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
