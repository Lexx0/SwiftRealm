//
//  CellModel.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/16/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import Foundation
//import RealmSwift
//import ObjectMapper


public class CellModel {
    
    dynamic var fileName: String!
    dynamic var isSelected = false
    dynamic var picData: Data!
    
    init(fileName: String, isSelected: Bool, picData: Data) {
        
        self.fileName = fileName
        self.isSelected = isSelected
        self.picData = picData
    }

}
