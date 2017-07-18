
//
//  SampleModel.swift
//  RegistrationForm_swift
//
//  Created by Kellton Tech on 21/04/1939 Saka.
//  Copyright © 1939 Saka Kelltontech. All rights reserved.
//

import UIKit

class SampleModel: NSObject {

    var modName:String?
    var modID:Int?
    var modLastName:String?
    var modGender:String?
    
  //  static let sharedInstance = SampleModel()
    
    func sampleMot(detailDict:NSDictionary) -> AnyObject{
        

        if let name = detailDict.object(forKey: "name"){
            if let name1 = name as? String{
                self.modName = name1
                print( self.modName!)
            }
        }
        
        if let id1 = detailDict.object(forKey: "id") {
            if let id2 = id1 as? Int{
                self.modID = id2
                print(self.modID!)
            }
        }
        if let lstName = detailDict.object(forKey: "lname"){
            if let lname1 = lstName as? String{
                self.modLastName = lname1
                print(self.modLastName!)
            }
        }
        if let gen = detailDict.object(forKey: "gender"){
            if let gen1 = gen as? String{
                self.modGender = gen1
                print(self.modGender!)
            }
        }
        return self
    }
}
