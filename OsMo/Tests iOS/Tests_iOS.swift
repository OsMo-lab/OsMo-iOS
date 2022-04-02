//
//  Tests_iOS.swift
//  Tests iOS
//
//  Created by Alexey Sirotkin on 21.03.2022.
//

import XCTest

class Tests_iOS: XCTestCase {
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false

        app = XCUIApplication()
        app.launch()
    }



    func testStartButtonBehavior() throws {
        // UI tests must launch the application that they test.
        
        let startButton = app.buttons["Start"]
        let stopButton = app.buttons["Stop"]
 
        XCTAssertTrue(startButton.exists,"Start button not exist")
        XCTAssertTrue(stopButton.exists,"Stop button not exist")
        
        XCTAssertFalse(startButton.isEnabled == stopButton.isEnabled,"Start/Stop buttons are in equal states")
        XCTAssertTrue(startButton.isEnabled)
        XCTAssertFalse(stopButton.isEnabled)

        startButton.tap()
        XCTAssertFalse(startButton.isEnabled)
        XCTAssertTrue(stopButton.isEnabled)
    }

}
