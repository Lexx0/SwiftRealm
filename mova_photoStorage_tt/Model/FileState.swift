//
//  FileState.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/17/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import Foundation

class FileState {
    
    var fileName: String?
    var isSelected = false
    
    init(fileName: String, isSelected: Bool) {
        self.fileName = fileName
        self.isSelected = isSelected
    }

//import ObjectMapper

//class FileState: NSObject, Mappable {
//    
//    var fileName: String?
//    var isSelected = false
//    
//    required init?(map: Map) {
//        if map.JSON["fileName"] == nil {
//            return nil
//        }
//        super.init()
//    }
//    
//    public func mapping(map: Map) {
//        fileName <- map["fileName"]
//    }
//    
//    override init() {
//        super.init()
//    }
}
