//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by admin on 4/24/20.
//  Copyright © 2020 admin. All rights reserved.
//

import XCTest

class CalculatorUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    
    func testLaunchPerformance() {
        
        let app = XCUIApplication()
        
        let oneNumber = app.buttons["1"]
        let twoNumber = app.buttons["2"]
        let threeNumber = app.buttons["3"]
        let fourNumber = app.buttons["4"]
        let sevenNumber = app.buttons["7"]
        let eightNumber = app.buttons["8"]
        let nineNumber = app.buttons["9"]
        
        let plusOperation = app.buttons["+"]
        let percentOperation = app.buttons["%"]
        
        let clearOperation = app.buttons["С"]
        let dotOperation = app.buttons["."]
        
        let secondPowerOperation = app.buttons["x^2"]
        let thirdPowerOperation = app.buttons["x^3"]
        let tenToXPowerOperation = app.buttons["10^x"]
        
        let equally = app.buttons["="]
        
        oneNumber.tap()
        dotOperation.tap()
        oneNumber.tap()
        plusOperation.tap()
        twoNumber.tap()
        equally.tap()
        fourNumber.tap()
        threeNumber.tap()
        equally.tap()
        fourNumber.tap()
        clearOperation.tap()
        equally.tap()
        sevenNumber.tap()
        percentOperation.tap()
        eightNumber.tap()
        secondPowerOperation.tap()
        eightNumber.tap()
        thirdPowerOperation.tap()
        nineNumber.tap()
        tenToXPowerOperation.tap()
        
        let staticText = XCUIApplication().staticTexts["1000000000"]
        staticText.swipeRight()
        staticText.swipeRight()
        staticText.swipeRight()
    }

}
