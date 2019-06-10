//
//  ViewController.swift
//  Calculator
//
//  Created by William Moody on 6/10/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberdisplayLabel: UILabel!
    
    var numberOne = "0"
    var numberTwo = "0"
    var edditSwap = true
    var actionSelected:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ClearButtonTapped(_ sender: Any) {
        numberOne = "0"
        numberTwo = "0"
        edditSwap = true
        actionSelected = 0
        updateLabel()
    }
    
    
    @IBAction func divideButtonTapped(_ sender: Any) {
        actionSelected = 4
        numberTwo = "0"
        swapEddit()
    }
    
    @IBAction func multiplyButtonTapped(_ sender: Any) {
        actionSelected = 3
        numberTwo = "0"
        swapEddit()
    }
    
    @IBAction func subtractButtonTapped(_ sender: Any) {
        actionSelected = 2
        numberTwo = "0"
        swapEddit()
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        actionSelected = 1
        numberTwo = "0"
        swapEddit()
    }
    
    @IBAction func equateButtonTapped(_ sender: Any) {
        var one: Double = Double(numberOne) ?? 0
        let two: Double = Double(numberTwo) ?? 0
        
        switch actionSelected {
        case 1:
            one += two
            numberOne = "\(one)"
            edditSwap = true
        case 2:
            one -= two
            numberOne = "\(one)"
            edditSwap = true
        case 3:
            one *= two
            numberOne = "\(one)"
            edditSwap = true
        case 4:
            one /= two
            numberOne = "\(one)"
            edditSwap = true
        default:
            updateLabel()
        }
        updateLabel()
    }
    
    @IBAction func negateButtonTapped(_ sender: Any) {
        var one: Double = Double(numberOne) ?? 0
        var two: Double = Double(numberTwo) ?? 0
        
        switch edditSwap {
        case true:
            one -= (one + one)
            numberOne = "\(one)"
        case false:
            two -= (two + two)
            numberTwo = "\(two)"
        }
        updateLabel()
    }
    
    @IBAction func percentButtonTapped(_ sender: Any) {
        var one: Double = Double(numberOne) ?? 0
        var two: Double = Double(numberTwo) ?? 0
        
        switch edditSwap {
        case true:
            one = (one + one)
            numberOne = "\(one)"
        case false:
            two -= (two + two)
            numberTwo = "\(two)"
        }
        updateLabel()
    }
    
    @IBAction func dotButtonTapped(_ sender: Any) {
        numberToAdd(numberString: ".")
    }
    
    
    @IBAction func oneButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "1")
    }
    
    @IBAction func twoButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "2")
    }
    
    @IBAction func threeButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "3")
    }
    
    @IBAction func fourButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "4")
    }
    
    @IBAction func fiveButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "5")
    }
    
    @IBAction func sixButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "6")
    }
    
    @IBAction func sevenButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "7")
    }
    
    @IBAction func eightButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "8")
    }
    
    @IBAction func nineButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "9")
    }
    
    @IBAction func zeroButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "0")
    }
    @IBAction func zero2ButtonTapped(_ sender: Any) {
        numberToAdd(numberString: "0")
    }
    
    
    func numberToAdd(numberString: String) {
        let number = numberString
        
        switch edditSwap {
        case true:
            if numberOne == "0"{
                numberOne = ""
            }
            numberOne += number
        case false:
            if numberTwo == "0"{
                numberTwo = ""
            }
            numberTwo += number
        }
        updateLabel()
    }
    
    func updateLabel() {
        
        switch edditSwap {
        case true:
            numberdisplayLabel.text = numberOne
        case false:
            numberdisplayLabel.text = numberTwo
        }
    }
    func swapEddit() {
        edditSwap = false
        updateLabel()
    }
}

