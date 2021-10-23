//
//  PersonTests.swift
//  PersonTests
//
//  Created by Александр on 23.10.2021.
//

import XCTest
@testable import SomethingForTests

class PersonTests: XCTestCase {
    
    var person: Person?
    var image: UIImage?
    var imageData: Data?
    
    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        image = UIImage(systemName: "lock.doc.fill")
        imageData = image?.pngData()
    }

    override func tearDown() {
        person = nil
        image = nil
        imageData = nil
        super.tearDown()
    }

    func testInitPersonWithFullnameAndPhone() {
        XCTAssertNotNil(person)
    }
    
    func testWhenGivenFullNameAndPhone() {
        XCTAssertEqual(person?.name, "Foo")
        XCTAssertEqual(person?.surname, "Bar")
        XCTAssertEqual(person?.phone, "Baz")
    }

    func testPersonInitDate() {
        XCTAssertNotNil(person?.date)
    }
    
    func testPersonWithImageAndDateInit() {
           let person = Person(name: "Baz", surname: "Bar", phone: "Foo", image: imageData)
        XCTAssertNotNil(person.date)
        XCTAssertNotNil(person.image)
        
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
