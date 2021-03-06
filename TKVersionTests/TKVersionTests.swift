//
//  TKVersionTests.swift
//  TKVersionTests
//
//  Created by Arash on 5/14/17.
//  Copyright © 2017 Taskulu. All rights reserved.
//

import XCTest
@testable import TKVersion

class TKVersionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testLess() {
        let a = TKVersion("1.0.0")
        let b = TKVersion("1.0.1")
        XCTAssert(a < b)
        XCTAssert(!(b < a))
    }

    func testMore() {
        let a = TKVersion("1.1.0")
        let b = TKVersion("1.0.1")
        XCTAssert(a > b)
        XCTAssert(!(b > a))
    }

    func testEqual() {
        let a = TKVersion("1.1.0")
        let b = TKVersion("1.1.1")
        let c = TKVersion("1.1.1")
        let d = TKVersion("1.1")
        XCTAssert(a != b)
        XCTAssert(b == c)
        XCTAssert(a == d)
    }

    func testEqualOrMore() {
        let a = TKVersion("1.1.2")
        let b = TKVersion("1.1.1")
        let c = TKVersion("1.1.1")
        XCTAssert(a >= b)
        XCTAssert(b >= c)
    }

    func testEqualOrLess() {
        let a = TKVersion("2.1.2")
        let b = TKVersion("2.2.2")
        let c = TKVersion("2.2.2")
        XCTAssert(a <= b)
        XCTAssert(b <= c)
    }
    
}
