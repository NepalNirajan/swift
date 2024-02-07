//
//  ViewController.swift
//  first
//
//  Created by Nepal Nirajan on 2023/10/23.
//


import UIKit

class ViewController: UIViewController {
    lazy var game = colorgame(NumbersOfPair: ListofBtn.count/2)
    
    var clickCounter = 0 {
        didSet {
            counter.text = "~\(clickCounter)~"
        }
    }
    
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet var ListofBtn: [UIButton]!
    
    
    @IBAction func Btn(_ sender: UIButton) {
        clickCounter += 1
        if let btnNumber = ListofBtn.firstIndex(of: sender){
            game.chooseBTn(at: btnNumber)
            updateViewFromModel()
        } else {
            print("Not in the list")
        }
    }
    func updateViewFromModel() {
            for index in ListofBtn.indices {
                let button = ListofBtn[index]
                let btn = game.buttons[index]
                if btn.isBtnWhite {
                    button.setTitle("it`s white", for: UIControl.State.normal)
                }
                else {
                    print("it is not white")
                }
            }
        }
        
    //    func clickBtn(signin sign: String, on Button: UIButton) {
    //
    //        if sign == "1" {
    //            if Button.backgroundColor == UIColor.white {
    //                Button.backgroundColor = UIColor.blue
    //            }
    //        }
    //        if sign == "2" {
    //            if Button.backgroundColor == UIColor.white {
    //                Button.backgroundColor = UIColor.blue
    //            }
    //        }
    //    }
        
    }
