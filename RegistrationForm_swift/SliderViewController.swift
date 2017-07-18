//
//  SliderViewController.swift
//  RegistrationForm_swift
//
//  Created by Kellton Tech on 21/04/1939 Saka.
//  Copyright © 1939 Saka Kelltontech. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet var labelvalue: UILabel!
    @IBOutlet var textvalue: UITextField!
    @IBOutlet var slider1: UISlider!
    @IBOutlet var slider2: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        @IBAction func slider1_tapped(_ sender: UISlider) {
       
        var currentvalue = Int(sender.value)
        labelvalue.text = "\(currentvalue)"
        slider2.value = slider1.value
    }

    @IBAction func slider2_tapped(_ sender: UISlider) {
        var currentvalue = Int(sender.value)
        labelvalue.text = "\(currentvalue)"
        slider1.value = slider2.value
    }
    
    @IBAction func submit(_ sender: UIButton) {
        if let stringValue = textvalue.text{
            if let intValue = Int(stringValue){
                slider1.setValue(Float(intValue), animated: true)
                slider2.setValue(Float(intValue), animated: true)
            }
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
