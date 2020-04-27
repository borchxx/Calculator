//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by admin on 4/24/20.
//  Copyright © 2020 admin. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    var calculate: Calculate!

     override func setUp() {
          super.setUp()
          calculate = Calculate()
      }

      override func tearDown() {
          super.tearDown()
      }
    
    func testSum() {
        let firstOperand: Float = 4
        let secondOperand: Float = 9
        
        let result = calculate.sum(firstOperand: firstOperand, secondOperand: secondOperand)

        XCTAssertEqual(result, 13.0)
    }
    
    func testSubtract() {
          let firstOperand: Float = 10
          let secondOperand: Float = 2
          
          let result = calculate.subtract(firstOperand: firstOperand, secondOperand: secondOperand)

          XCTAssertEqual(result, 8)
      }
    
    func testMultiply() {
             let firstOperand: Float = 10
             let secondOperand: Float = 2
             
             let result = calculate.multiply(firstOperand: firstOperand, secondOperand: secondOperand)

             XCTAssertEqual(result, 20)
         }
    
    func testDividde() {
             let firstOperand: Float = 10
             let secondOperand: Float = 2
             
             let result = calculate.dividde(firstOperand: firstOperand, secondOperand: secondOperand)

             XCTAssertEqual(result, 5)
         }
    
    func testSecondPower(){
        let currentNumber: Float = 16
        let result = calculate.secondPower(currentNumber: currentNumber)
        XCTAssertEqual(result, 256)
    }
    
    func testThirdPower(){
           let currentNumber: Float = 16
           let result = calculate.thirdPower(currentNumber: currentNumber)
           XCTAssertEqual(result, 4096)
       }
    
    func testTenToXPower(){
        let currentNumber: Float = 3
        let result = calculate.tenToXPower(currentNumber: currentNumber)
        XCTAssertEqual(result, 1000)
    }
    
    func testSqrRoot(){
        let currentNumber: Float = 4
        let result = calculate.sqrRoot(currentNumber: currentNumber)
        print(result)
        XCTAssertEqual(result, 2)
    }
}
