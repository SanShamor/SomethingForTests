//
//  SomethingForTestsUITests.swift
//  SomethingForTestsUITests
//
//  Created by Александр on 23.10.2021.
//

import XCTest

class SomethingForTestsUITests: XCTestCase {

    override func setUp()  {
        super.setUp()
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {

    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.navigationBars["Главная"].buttons["Add"].tap()
        app.textFields["Name"].tap()
        app.textFields["Name"].typeText("Foo")
        
        let surnameTextField = app.textFields["Surname"]
        surnameTextField.tap()
        surnameTextField.typeText("Bar")
        
        let phoneTextField = app.textFields["Phone"]
        phoneTextField.tap()
        phoneTextField.typeText("Baz")
        
        app.buttons["Save"].tap()
        
        XCTAssertTrue(app.tables.staticTexts["Foo"].exists)
       
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
