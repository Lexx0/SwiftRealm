//
//  ChooseFileCell.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/17/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import UIKit

class ChooseFileCell: UITableViewCell {

    @IBOutlet weak var fileNameLbl: UILabel!
    @IBOutlet weak var checkBox: CheckBox!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
