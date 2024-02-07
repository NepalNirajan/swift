//
//  btn.swift
//  first
//
//  Created by Nepal Nirajan on 2024/01/22.
//

import Foundation
struct Btn {
    var isBtnWhite = true
    var isBtnNotWhite = false
    var BtnId : Int
    
    static var IDfactory = 0
    
    static func getUniqueID() -> Int {
        IDfactory += 1
        return IDfactory
    }
    
    init() {
        self.BtnId = Btn.getUniqueID()
    }
}
