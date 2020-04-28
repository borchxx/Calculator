//
//  ViewController.swift
//  Calculator
//
//  Created by admin on 4/27/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberButton: [UIButton]!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var nulButton: UIButton!
    
    var currentNumber: Float {
        get {
            return Float(textLabel.text!)!
        }
        set {
            textLabel.text = "\(newValue)"
            flagFirstSymbol = false
            removingZero(rez: currentNumber)
        }
    }
    
    var rez: Float = 0{
        didSet {
            removingZero(rez: rez)
        }
    }
    
    var calculate: Calculate!
    var firstOperand: Float = 0
    var secondOperand: Float = 0
    var operationSign: String!
    var flagFirstSymbol = false
    var flagDot = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configButton()
        calculate = Calculate()
    }
    
    @IBAction func deleteNumbers(_ sender: UISwipeGestureRecognizer) {
        if flagFirstSymbol {
            if let dropLastText = textLabel.text{
                textLabel.text = String(dropLastText.dropLast())
            }
        }
    }
    @IBAction func clearButtonAction(_ sender: UIButton!) {
        clear()
    }
    
    @IBAction func pressedNumberButton(_ sender: UIButton!) {
        let numberButton = sender.currentTitle!
        if flagFirstSymbol {
            if textLabel.text!.count < 20 {
                textLabel.text = textLabel.text! + numberButton
            }
        } else {
            textLabel.text = numberButton
            flagFirstSymbol = true
        }
    }
    
    @IBAction func operatorsButtonAction(_ sender: UIButton) {
        firstOperand = currentNumber
        flagFirstSymbol = false
        flagDot = false
        operationSign = sender.currentTitle!
    }
    
    @IBAction func rezButton(_ sender: UIButton) {
        if flagFirstSymbol && firstOperand != 0 && currentNumber != 0{
            secondOperand = currentNumber
            flagFirstSymbol = false
            flagDot = false
            calculate(sign: operationSign)
        } else {
            clear()
        }
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
        if flagFirstSymbol && !flagDot {
            textLabel.text = textLabel.text! + "."
            flagDot = true
        } else if !flagFirstSymbol && !flagDot {
            textLabel.text = "0."
            flagFirstSymbol = true
        }
    }
    
    @IBAction func percentButton(_ sender: UIButton) {
        if firstOperand == 0 {
            currentNumber = currentNumber / 100
        } else {
            flagFirstSymbol = false
            secondOperand = firstOperand * currentNumber / 100
        }
    }
    
    @IBAction func degreeButton(_ sender: UIButton) {
        switch sender.currentTitle {
        case "x^2":
            currentNumber = calculate.secondPower(currentNumber: currentNumber)
        case "x^3":
            currentNumber = calculate.thirdPower(currentNumber: currentNumber)
        case "10^x":
            currentNumber = calculate.tenToXPower(currentNumber: currentNumber)
        case "√":
            currentNumber = calculate.sqrRoot(currentNumber: currentNumber)
        default:
            break
        }
    }
}

//MARK: - Configurate Button

extension ViewController {
    func configButton(){
        nulButton.layer.cornerRadius = 30
        for i in numberButton {
            i.layer.cornerRadius = 0.5 * i.bounds.size.width
        }
    }
}

//MARK: - Logic Button

extension ViewController {
    func clear(){
        firstOperand = 0
        secondOperand = 0
        currentNumber = 0
        flagFirstSymbol = false
        flagDot = false
        operationSign = ""
        textLabel.text = "0"
    }
    
    func calculate(sign: String){
        switch sign {
             case "+":
                    rez = calculate.sum(firstOperand: firstOperand, secondOperand: secondOperand)
             case "−":
                     rez = calculate.subtract(firstOperand: firstOperand, secondOperand: secondOperand)
             case "✕":
                     rez = calculate.multiply(firstOperand: firstOperand, secondOperand: secondOperand)
             case "÷":
                     if firstOperand == 0 {
                         textLabel.text = "ERROR"
                     }else{
                        rez = calculate.dividde(firstOperand: firstOperand, secondOperand: secondOperand)
                     }
             default:
                 print("Error")
        }
    }
    
    func removingZero(rez: Float){
        var rezult = rez
        var temp: Int
        if rezult.truncatingRemainder(dividingBy: 1) == 0{
            temp = Int(rezult)
            textLabel.text = String(temp)
        } else {
            rezult = round(100.0 * rezult) / 100.0
            textLabel.text = String(rezult)
        }
    }
}
