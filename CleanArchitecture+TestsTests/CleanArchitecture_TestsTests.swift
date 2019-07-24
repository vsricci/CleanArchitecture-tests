//
//  CleanArchitecture_TestsTests.swift
//  CleanArchitecture+TestsTests
//
//  Created by Vinicius Ricci on 22/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import XCTest
@testable import CleanArchitecture_Tests

class CleanArchitecture_TestsTests: XCTestCase {
    var person: Person?
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        person = Person()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRegisterMustBeUserName() {
        if let name = person?.name {
            XCTAssert(name != "", "Must be Name")
        }
    }
    func testRegisterMustBeUserLastName() {
        if let name = person?.lastName {
            XCTAssert(name != "", "Must be Last Name")
        }
    }
    func testRegisterMustBeUserAge() {
        if let name = person?.age {
            XCTAssert(name != "", "Must be Age")
        }
    }
    func testRegisterMustBeUserGenre() {
        if let name = person?.genre {
            XCTAssert(name != "", "Must be Genre")
        }
    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
