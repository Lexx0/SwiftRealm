//
//  ChooseFileCell.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/17/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import UIKit

class ChooseFileCell: UITableViewCell {
    
    var checkBoxBlock: ((_ sender: CheckBox) -> ())?

    @IBOutlet weak var fileNameLbl: UILabel!
    @IBOutlet weak var checkBox: CheckBox!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    public func fillWithState(_ state: FileState) {
        self.fileNameLbl.text = state.fileName
        self.checkBox.isChecked = state.isSelected
    }
    
}
