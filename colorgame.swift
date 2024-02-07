//
//  colorgame.swift
//  first
//
//  Created by Nepal Nirajan on 2024/01/22.
//

import Foundation
class colorgame {
    var buttons = [Btn]()
        
    func chooseBTn(at index: Int) {
       
        
        guard index >= 0, index < buttons.count else {
                   print("Invalid index")
                   return
               }
                
        var selectedBtn = buttons[index]
                selectedBtn.isBtnWhite.toggle()
                
                print("Chose button at index \(index). isBtnWhite: \(selectedBtn.isBtnWhite)")
            }
    init (NumbersOfPair:Int) {
        for _ in 0..<NumbersOfPair {
            let Btn1 = Btn()
            let Btn2 = Btn()
            buttons += [Btn1,Btn2]
        }
    }
}
