//
//  RegTableViewCell.swift
//  RegistrationForm_swift
//
//  Created by Kellton Tech on 16/04/1939 Saka.
//  Copyright © 1939 Saka Kelltontech. All rights reserved.
//

import UIKit

class RegTableViewCell: UITableViewCell {

    @IBOutlet var FormDetails: UILabel!
    @IBOutlet var Form: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
