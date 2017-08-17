//
//  CheckBox.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/17/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import Foundation

class CheckBox: UIButton {
    

    let checkedImage = UIImage(named: "checked-circle")! as UIImage
    let uncheckedImage = UIImage(named: "empty-circle")! as UIImage
    
    var isChecked: Bool = false {
        didSet {
            if isChecked == true {
                self.imageView?.image = checkedImage
                self.setImage(checkedImage, for: .normal)
            } else {
                self.imageView?.image = uncheckedImage
                self.setImage(uncheckedImage, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(CheckBox.checkButtonTapped(sender:)), for: UIControlEvents.touchUpInside)
        self.isChecked = false
    }
    
    func checkButtonTapped(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
    
}
