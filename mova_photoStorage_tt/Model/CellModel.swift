//
//  CellModel.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/16/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import Foundation
import RealmSwift
//import ObjectMapper


class CellModel: Object {
    
    dynamic var fileName: String?
    dynamic var isSelected = false
    dynamic var picData: NSData?

}
