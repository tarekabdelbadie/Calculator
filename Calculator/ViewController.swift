//
//  ViewController.swift
//  Calculator
//
//  Created by mac on 4/30/19.
//  Copyright © 2019 egyzool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLa: UILabel!
    //this is variable created for holding the first number
    var numberOne = ""
    //this is variable created for holding the operation
    var op = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //this function to take number from the user
    func addNumber(number:String) {
        if resultLa.text == "0" {
            resultLa.text = number
        } else {
            resultLa.text = resultLa.text! + number
        }
    }
    
    //numbers buttons
    @IBAction func numberBu(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            addNumber(number: "0")
        case 1:
            addNumber(number: "1")
        case 2:
            addNumber(number: "2")
        case 3:
            addNumber(number: "3")
        case 4:
            addNumber(number: "4")
        case 5:
            addNumber(number: "5")
        case 6:
            addNumber(number: "6")
        case 7:
            addNumber(number: "7")
        case 8:
            addNumber(number: "8")
        case 9:
            addNumber(number: "9")
        case 10:
            if resultLa.text!.contains(".") {
                addNumber(number: "")
            }else {
                addNumber(number: ".")
            }
        default: break
        }
    }
    
    //operation buttons
    @IBAction func funcKeys(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            switch op {
            case "+":
                resultLa.text = "\(Double(numberOne)! + Double(resultLa.text!)!)"
            case "-":
                resultLa.text = "\(Double(numberOne)! - Double(resultLa.text!)!)"
            case "*":
                resultLa.text = "\(Double(numberOne)! * Double(resultLa.text!)!)"
            case "/":
                if Int(resultLa.text!) != 0 {
                resultLa.text = "\(Double(numberOne)! / Double(resultLa.text!)!)"
                } else {
                    resultLa.text = "Error"
                }
            case "%":
                resultLa.text = resultLa.text
            case "-1":
                resultLa.text = resultLa.text
            default:break
            }
        case 1:
            numberOne = resultLa.text!
            op = "+"
            resultLa.text = "0"
        case 2:
            numberOne = resultLa.text!
            op = "-"
            resultLa.text = "0"
        case 3:
            numberOne = resultLa.text!
            op = "*"
            resultLa.text = "0"
        case 4:
            numberOne = resultLa.text!
            op = "/"
            resultLa.text = "0"
        case 5:
            numberOne = resultLa.text!
            resultLa.text = "\(Double(numberOne)! / 100)"
        case 6:
            numberOne = resultLa.text!
            op = "-1"
            if numberOne != "0" {
                resultLa.text =  "-" + numberOne
            } else {
                resultLa.text = "0"
            }
        case 7:
            resultLa.text = "0"
        default:break
        }
    }
}
