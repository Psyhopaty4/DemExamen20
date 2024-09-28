//
//  DemExamenUITests.swift
//  DemExamenUITests
//
//  Created by user on 28.09.2024.
//

import XCTest

final class DemExamenUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testWelcome() throws {
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    //Тест проверки работы очереди
    
    func testNextQueueForm() throws {

        let queue1MainLabel = app.staticTexts["Quick Delivery At Your Doorstep"]
        
        XCTAssert(queue1MainLabel.exists)
        XCTAssertEqual(queue1MainLabel.label, "Quick Delivery At Your Doorstep")
        
        let queue1SubLabel = app.staticTexts["Enjoy quick pick-up and delivery to your destination"]
        
        XCTAssert(queue1SubLabel.exists)
        XCTAssertEqual(queue1SubLabel.label, "Enjoy quick pick-up and delivery to your destination")
        
        app.buttons["Next"].tap()
        
        let queue2MainLabel = app.staticTexts["Flexible payment"]
        
        XCTAssert(queue2MainLabel.exists)
        XCTAssertEqual(queue2MainLabel.label, "Flexible payment")
        
        let queue2SubLabel = app.staticTexts["Different modes of payment either before and after delivery without stress"]
        
        XCTAssert(queue2SubLabel.exists)
        XCTAssertEqual(queue2SubLabel.label, "Different modes of payment either before and after delivery without stress")
        
        app.buttons["Next"].tap()
        
        let queue3MainLabel = app.staticTexts["Real-time Tracking"]
        
        XCTAssert(queue3MainLabel.exists)
        XCTAssertEqual(queue3MainLabel.label, "Real-time Tracking")
        
        let queue3SubLabel = app.staticTexts["Track your packages/items from the comfort of your home till final destination"]
        
        XCTAssert(queue3SubLabel.exists)
        XCTAssertEqual(queue3SubLabel.label, "Track your packages/items from the comfort of your home till final destination")
        
        app.buttons["SignUp"].tap()
    }
}
