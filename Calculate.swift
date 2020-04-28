//
//  Calculate.swift
//  Calculator
//
//  Created by admin on 4/27/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

class Calculate {
    func sum(firstOperand: Float, secondOperand: Float) -> Float {
        return firstOperand + secondOperand
    }
    
    func subtract(firstOperand: Float, secondOperand: Float) -> Float {
        return firstOperand - secondOperand
    }
    
    func multiply(firstOperand: Float, secondOperand: Float) -> Float {
        return firstOperand * secondOperand
    }
    
    func dividde(firstOperand: Float, secondOperand: Float) -> Float {
        return firstOperand / secondOperand
    }
    
    func secondPower(currentNumber: Float) -> Float {
        let temp = currentNumber * currentNumber
        return temp
    }
    
    func thirdPower(currentNumber: Float) -> Float {
           let temp = currentNumber * (currentNumber * currentNumber)
           return temp
       }
    
    func tenToXPower(currentNumber: Float) -> Float {
        var temp: Float
        var hoarder = 1
        if currentNumber != 0{
            for _ in 1...Int(currentNumber) {
                       hoarder *= 10
                   }
                   temp = Float(hoarder)
                   return temp
        } else {
            return 0
        }
    }
    
    func sqrRoot(currentNumber: Float) -> Float {
        let temp = sqrt(currentNumber)
        return temp
    }
}
